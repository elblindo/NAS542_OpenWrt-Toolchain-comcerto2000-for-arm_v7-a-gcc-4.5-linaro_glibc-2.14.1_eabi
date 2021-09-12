#!/usr/bin/webif-page
<?
. "/usr/lib/webif/webif.sh"
###################################################################
# LAN configuration page
#
# Description:
#	Configures basic LAN interface settings.
#
# Author(s) [in order of work date]:
#       Original webif authors of wan.sh and lan.sh
#	Jeremy Collake <jeremy.collake@gmail.com>
#	Travis Kemen <kemen04@gmail.com>
#
# Major revisions:
#
# UCI variables referenced:
#   todo
# Configuration files referenced:
#   none
#

#Load settings from the network config file.	
uci_load "network"

# fetching lan dns settings
#FORM_landns="${lan_dns:-$(uci get network.lan.dns)}"
#LISTVAL="$FORM_landns"
#handle_list "$FORM_landnsremove" "$FORM_landnsadd" "$FORM_landnssubmit" 'ip|FORM_dnsadd|@TR<<DNS Address>>|required' && {
#        FORM_landns="$LISTVAL"
#        uci_add network interface lan
#        uci_set network lan dns "$FORM_landns"
#}
#FORM_landnsadd=${FORM_landnsadd:-192.168.1.1}

#bridged=`uci get bridge.general.lan`
#if [ "$bridged" -eq 1 ]; then
#  brcount=`uci get bridge.general.count`  
#  brindex=1
#  while [ $brindex -le "$brcount" ]
#  do
#    brname=`uci get bridge.general.brname$brindex`
#    brcfg=`uci get network.$brname.lan` 
#    if [ "$brcfg" -eq 1 ];then 
#      brstatus=`uci get network.$brname.status` 
#      [ "$brstatus" = "0" ] && bridged="0" 
#    fi 
#    brindex=`expr $brindex + 1` 
#  done 
#else
#  bridged="0"
#fi
brnames=$(ubus list network.interface.* | cut -d'.' -f 3 | sed "s/loopback//g" | sed "s/lan//g" | sed "s/wan//g" | sed "/^$/d")
for bridge_name in $brnames; do
	brcfg=`uci get network.${bridge_name}.lan` 
	[ "$brcfg" = "1" ] && bridged=1
done

# fetching lan other settings
if empty "$FORM_submit"; then
#        FORM_lan_status=${lan_status:-$(uci get network.lan.status)}
#        if [ "$FORM_lan_status" = "0" -o "$FORM_lan_status" = "disable" ] ; then
#          FORM_lan_status="0"
#        else
#          FORM_lan_status="1"
#        fi
        FORM_lan_ipaddr=${lan_ipaddr:-$(uci get network.lan.ipaddr)}
        FORM_lan_netmask=${lan_netmask:-$(uci get network.lan.netmask)}
        FORM_lan_gateway=${lan_gateway:-$(uci get network.lan.gateway)}
        lan_ip6_full_addr=$(uci get network.lan.ip6addr)
        FORM_lan6_ipaddr=$(echo $lan_ip6_full_addr | cut -d'/' -f 1)
        FORM_lan6_netmask=$(echo $lan_ip6_full_addr | cut -d'/' -f 2)
else
        SAVED=1
	if [ "$bridged" != "1" ]; then
	  lan_ipv4_validation="required"
	else
	  lan_ipv4_validation=""
	fi
validate <<EOF
ip|FORM_lan_ipaddr|@TR<<LAN IPv4 Address>>|$lan_ipv4_validation|$FORM_lan_ipaddr
netmask|FORM_lan_netmask|@TR<<LAN IPv4 Netmask>>|$lan_ipv4_validation|$FORM_lan_netmask
ip|FORM_lan_gateway|@TR<<LAN Default Gateway>>||$FORM_lan_gateway
ip6|FORM_lan6_ipaddr|@TR<<LAN IPv6 Address>>|required|$FORM_lan6_ipaddr
netmask6|FORM_lan6_netmask|@TR<<LAN IPv6 Netmask>>|required|$FORM_lan6_netmask
EOF

# saving lan settings
        equal "$?" 0 && {
	  if [ "$bridged" != "1" ]; then
	    lan_dhcp_enable=`uci get dhcp.lan.enabled`
	    equal "$lan_dhcp_enable" 1 && {
	      lan_prev_ipaddr=${lan_ipaddr:-$(uci get network.lan.ipaddr)}
	      lan_prev_netmask=${lan_netmask:-$(uci get network.lan.netmask)}
	      dhcp_lan_conf="n"
	      equal "$lan_prev_ipaddr" "$FORM_lan_ipaddr" || dhcp_lan_conf="y"
	      equal "$lan_prev_netmask" "$FORM_lan_netmask" || dhcp_lan_conf="y"
	      equal "$dhcp_lan_conf" "y" && {
	        uci_add "dhcp" "dhcp" "lan"
              }
	    }
  	    uci_add network interface lan
#            uci_set network lan status $FORM_lan_status
            uci_set network lan ipaddr $FORM_lan_ipaddr
            uci_set network lan netmask $FORM_lan_netmask
            uci_set network lan gateway "$FORM_lan_gateway"
	  fi
          uci_set network lan ip6addr "${FORM_lan6_ipaddr}/${FORM_lan6_netmask}"
#### lan_device/lan_ifname added
          lan_device=${lan_device:-$(uci get network.lan.ifname)}
          lan_device=${lan_device:-eth2}
          uci_set network lan ifname "$lan_device"
        }
fi

header "Network" "LAN" "@TR<<LAN Configuration>>" ' onload="modechange()" ' "$SCRIPT_NAME"

cat <<EOF
<script type="text/javascript" src="/webif.js"></script>
<script type="text/javascript">
function modechange()
{
        if('$bridged' == '1')
        {
/*                document.getElementById('lan_status').disabled = true; */
                document.getElementById('lan_ipaddr').disabled = true;
                document.getElementById('lan_netmask').disabled = true;
        }
}
</script>
EOF

display_form <<EOF
onchange|modechange
start_form|@TR<<LAN IPv4 Configuration>>
#field|@TR<<LAN IPv4 Status>>
#select|lan_status|$FORM_lan_status
#option|1|Enable
#option|0|Disable
field|@TR<<LAN IPv4 Address>>
text|lan_ipaddr|$FORM_lan_ipaddr
helpitem|IPv4 Address
helptext|Helptext LAN IPv4 Address#This is the address you want this device to have on your LAN.
field|@TR<<IPv4 Netmask>>
text|lan_netmask|$FORM_lan_netmask
helpitem|IPv4 Netmask
helptext|Helptext IPv4 Netmask#This bitmask indicates what addresses are included in your LAN.
#field|@TR<<Default Gateway>>
#text|lan_gateway|$FORM_lan_gateway
#end_form
#start_form|@TR<<LAN DNS Servers>>
#listedit|landns|$SCRIPT_NAME?|$FORM_landns|$FORM_landnsadd
#helpitem|Note
#helptext|Helptext LAN DNS save#You need save your settings on this page before adding/removing DNS servers
end_form
start_form|@TR<<LAN IPv6 Configuration>>
field|@TR<<LAN IPv6 Address>>
text|lan6_ipaddr|$FORM_lan6_ipaddr
field|@TR<<IPv6 Netmask>>
text|lan6_netmask|$FORM_lan6_netmask
end_form
submit|save|@TR<<Save>>
EOF

footer ?>

<!--
##WEBIF:name:Network:200:LAN
-->
