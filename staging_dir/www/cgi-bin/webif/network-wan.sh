#!/usr/bin/webif-page
<?
. "/usr/lib/webif/webif.sh"
###################################################################
# WAN configuration page
#
# Description:
#	Configures basic WAN interface settings.
#
# Author(s) [in order of work date]:
#       Original webif authors of wan.sh
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

# fetching wan dns settings
FORM_wandns="${wan_dns:-$(uci get network.wan.dns)}"
LISTVAL="$FORM_wandns"
handle_list "$FORM_wandnsremove" "$FORM_wandnsadd" "$FORM_wandnssubmit" 'ip|FORM_dnsadd|@TR<<WAN DNS Address>>|required' && {
        FORM_wandns="$LISTVAL"
#        uci_add network interface wan
        uci_set network wan dns "$FORM_wandns"
}
FORM_wandnsadd=${FORM_wandnsadd:-192.168.1.1}

#bridged=`uci get bridge.general.wan`
#if [ "$bridged" -eq 1 ]; then
#  brcount=`uci get bridge.general.count`  
#  brindex=1
#  while [ $brindex -le "$brcount" ]
#  do
#    brname=`uci get bridge.general.brname$brindex`
#    brcfg=`uci get network.$brname.wan`
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
	brcfg=`uci get network.${bridge_name}.wan` 
	[ "$brcfg" = "1" ] && bridged=1
done

# fetching wan other settings
if empty "$FORM_submit"; then
        FORM_wan_proto=${FORM_wan_proto:-$(uci get network.wan.proto)}
        case "$FORM_wan_proto" in
                # supported types
                static|dhcp|pptp|pppoe|wwan) ;;
                # otherwise select "none"
                *) FORM_wan_proto="none";;
        esac

        # pptp, dhcp and static common
#        FORM_wan_status=${wan_status:-$(uci get network.wan.status)}
#        if [ "$FORM_wan_status" = "0" -o "$FORM_wan_status" = "disable" ] ; then
#          FORM_wan_status="0"
#        else
#          FORM_wan_status="1"
#        fi
        FORM_wan_ipaddr=${wan_ipaddr:-$(uci get network.wan.ipaddr)}
        FORM_wan_netmask=${wan_netmask:-$(uci get network.wan.netmask)}
        FORM_wan_gateway=${wan_gateway:-$(uci get network.wan.gateway)}
        FORM_wan_ifname=${wan_device:-$(uci get network.wan.ifname)}
        wan_ip6_full_addr=$(uci get network.wan.ip6addr)
        FORM_wan6_ipaddr=$(echo $wan_ip6_full_addr | cut -d'/' -f 1)
        FORM_wan6_netmask=$(echo $wan_ip6_full_addr | cut -d'/' -f 2)
        FORM_wan6_gateway=${wan6_gateway:-$(uci get network.rt6.gateway)}

        # ppp common

        FORM_ppp_username=${ppp_username:-$(uci get network.wan.username)}
        FORM_ppp_passwd=${ppp_passwd:-$(uci get network.wan.password)}
        FORM_ppp_idletime=${ppp_idletime:-$(uci get network.ppp.idletime)}
        FORM_ppp_redialperiod=${ppp_redialperiod:-$(uci get network.ppp.redialperiod)}
        FORM_ppp_mtu=${ppp_mtu:-$(uci get network.ppp.mtu)}

        redial=${ppp_demand:-$(uci get network.ppp.demand)}
        case "$redial" in
                1|enabled|on) FORM_ppp_redial="demand";;
                *) FORM_ppp_redial="persist";;
        esac

        FORM_pptp_server_ip=${pptp_server_ip:-$(uci get network pptp server_ip)}

        # umts apn
        FORM_wwan_service=${wwan_service:-$(uci get network.wwan.service)}
        FORM_wwan_pincode="-@@-"
        FORM_wwan_country=${wwan_country:-$(uci get network.wwan.country)}
        FORM_wwan_apn=${wwan_apn:-$(uci gat network.wwan.apn)}
        FORM_wwan_username=${wwan_username:-$(uci get network.wwan.username)}
        FORM_wwan_passwd=${wwan_passwd:-$(uci gat network.wwan.passwd)}

else
        SAVED=1

	if [ "$bridged" -eq 1 ]; then
	  V_IP=""
	  V_NM=""
	  V_PPTP=""
	else
          empty "$FORM_wan_proto" && {
                ERROR="@TR<<No WAN Proto|No WAN protocol has been selected>>"
                return 255
          }

          case "$FORM_wan_proto" in
                static)
                        V_IP="required"
                        V_NM="required"
                        ;;
                pptp)
                        V_PPTP="required"
                        ;;
          esac
        fi

validate <<EOF
ip|FORM_wan_ipaddr|@TR<<WAN IPv4 Address>>|$V_IP|$FORM_wan_ipaddr
netmask|FORM_wan_netmask|@TR<<WAN IPv4 Netmask>>|$V_NM|$FORM_wan_netmask
ip|FORM_wan_gateway|@TR<<WAN Default IPv4 Gateway>>||$FORM_wan_gateway
ip|FORM_pptp_server_ip|@TR<<PPTP Server IPv4>>|$V_PPTP|$FORM_pptp_server_ip
ip|FORM_wandnsadd|@TR<<WAN DNS IPv4 Address>>|required|$FORM_wandnsadd
ip6|FORM_wan6_ipaddr|@TR<<WAN IPv6 Address>>|required|$FORM_wan6_ipaddr
netmask6|FORM_wan6_netmask|@TR<<WAN IPv6 Netmask>>|required|$FORM_wan6_netmask
ip6|FORM_wan6_gateway|@TR<<WAN Default IPv6 Gateway>>||$FORM_wan6_gateway
EOF

# saving wan settings
        equal "$?" 0 && {
	  if [ "$bridged" != "1" ]; then
		wan_dhcp_enable=`uci get dhcp.wan.enabled`
		equal "$wan_dhcp_enable" 1 && {
		  if [ "$FORM_wan_proto" == "static" ]; then
		    wan_prev_ipaddr=${wan_ipaddr:-$(uci get network.wan.ipaddr)}
		    wan_prev_netmask=${wan_netmask:-$(uci get network.wan.netmask)}
		    dhcp_wan_conf="n"
		    equal "$wan_prev_ipaddr" "$FORM_wan_ipaddr" || dhcp_wan_conf="y"
		    equal "$wan_prev_netmask" "$FORM_wan_netmask" || dhcp_wan_conf="y"
		    equal "$dhcp_wan_conf" "y" && {
		      uci_add "dhcp" "dhcp" "wan"
                    }
		  else
		      uci_add "dhcp" "dhcp" "wan"
#		      uci_set dhcp wan enabled "0"
		  fi
		}
                old_wan_proto=`uci get network.wan.proto`
                var_fw_restart="n"
                [ $old_wan_proto == "pppoe" -a $FORM_wan_proto != "pppoe" ] && {
                  uci_set network wan firewall_restart "y"
                  var_fw_restart="y"
                }
                [ $old_wan_proto != "pppoe" -a $FORM_wan_proto == "pppoe" ] && {
                  uci_set network wan firewall_restart "y"
                  var_fw_restart="y"
                }
                [ $var_fw_restart == "n" ] && uci_set network wan firewall_restart "n"
  		uci_add network interface wan
#                uci_set network wan status $FORM_wan_status
                uci_set network wan proto $FORM_wan_proto

                # Settings specific to one protocol type
                case "$FORM_wan_proto" in
                        static) uci_set network wan gateway "$FORM_wan_gateway" ;;
                        pptp) uci_set network pptp server_ip "$FORM_pptp_server_ip" ;;
                        wwan)
                        uci_set network wwan service $FORM_wwan_service
                        if ! equal "$FORM_wwan_pincode" "-@@-"; then
                                uci_set network wwan pincode $FORM_wwan_pincode
                        fi
                        uci_set network wwan country $FORM_wwan_country
                        uci_set network wwan apn $FORM_wwan_apn
                        uci_set network wwan username $FORM_wwan_username
                        uci_set network wwan passwd $FORM_wwan_passwd
			;;
                esac

                # Common settings for PPTP, Static and DHCP
                case "$FORM_wan_proto" in
                        pptp|static|dhcp)
			uci_set network wan ipaddr "$FORM_wan_ipaddr"
			uci_set network wan netmask "$FORM_wan_netmask"
                        ;;
                esac
                # Common PPP settings
                case "$FORM_wan_proto" in
                        pppoe|pptp|wwan)
                                empty "$FORM_ppp_username" || uci_set network wan username $FORM_ppp_username
                                empty "$FORM_ppp_passwd" || uci_set network wan password $FORM_ppp_passwd

                                # These can be blank
                                uci_set network ppp idletime "$FORM_ppp_idletime"
                                uci_set network ppp redialperiod "$FORM_ppp_redialperiod"
                                uci_set network ppp mtu "$FORM_ppp_mtu"

                                case "$FORM_ppp_redial" in
                                        demand)
                                                uci_set network ppp demand 1
                                                ;;
                                        persist)
                                                uci_set network ppp demand ""
                                                ;;
                                esac
                        ;;
                        *)
                                wan_ifname=${wan_ifname:-$(uci get network.wan.ifname)}
                                [ -z "$wan_ifname" -o "${wan_ifname%%[0-9]*}" = "ppp" ] && {
                                        wan_device=${wan_device:-$(uci get network.wan.ifname)}
                                        uci_set network wan ifname "$wan_device"
                                }
                        ;;
                esac
                # Reset other wan mode settings
                case "$FORM_wan_proto" in
                        dhcp)
			  uci_remove network wan ipaddr 
			  uci_remove network wan netmask 
                          uci_remove network wan gateway 
                          uci_remove network wan username 
                          uci_remove network wan password 
                        ;;
                        static)
                          uci_remove network wan username 
                          uci_remove network wan password 
                        ;;
                        pppoe)
			  uci_remove network wan ipaddr 
			  uci_remove network wan netmask 
                          uci_remove network wan gateway 
                        ;;
                esac
	  fi

	  uci_set network wan ip6addr "${FORM_wan6_ipaddr}/${FORM_wan6_netmask}"
          uci_set network rt6 gateway $FORM_wan6_gateway 
        }
fi

# detect pptp package and compile option
[ -x "/sbin/ifup.pptp" ] && {
        PPTP_OPTION="option|pptp|PPTP"
        PPTP_SERVER_OPTION="field|PPTP Server IP|pptp_server|hidden
text|pptp_server_ip|$FORM_pptp_server_ip"
}
[ `find /usr/lib/pppd -iname rp-pppoe.so | wc -l` = "1" ] && {
	PPPOE_OPTION="option|pppoe|@TR<<PPPoE>>"
}
[ -x "/lib/network/pppoa.sh" ] && {
	PPPOA_OPTION="option|pppoa|@TR<<PPPoA>>"
}

[ -x /sbin/ifup.wwan ] && {
        WWAN_OPTION="option|wwan|UMTS/GPRS"
        WWAN_COUNTRY_LIST=$(
                awk '   BEGIN{FS=":"}
                        $1 ~ /[ \t]*#/ {next}
                        {print "option|" $1 "|@TR<<" $2 ">>"}' < /usr/lib/webif/apn.csv
        )
        JS_APN_DB=$(
                awk '   BEGIN{FS=":"}
                        $1 ~ /[ \t]*#/ {next}
                        {print "        apnDB." $1 " = new Object;"
                         print "        apnDB." $1 ".name = \"" $3 "\";"
                         print "        apnDB." $1 ".user = \"" $4 "\";"
                         print "        apnDB." $1 ".pass = \"" $5 "\";\n"}' < /usr/lib/webif/apn.csv
        )
}

header "Network" "WAN" "@TR<<WAN Configuration>>" ' onload="modechange()" ' "$SCRIPT_NAME"

cat <<EOF
<script type="text/javascript" src="/webif.js "></script>
<script type="text/javascript">
<!--
function setAPN(element) {
        var apnDB = new Object();

$JS_APN_DB

        document.getElementById("wwan_apn").value = apnDB[element.value].name;
        document.getElementById("wwan_username").value = apnDB[element.value].user;
        document.getElementById("wwan_passwd").value = apnDB[element.value].pass;
}

function modechange()
{
	var v;
	v = (isset('wan_proto', 'static') || isset('wan_proto', 'pptp') || isset('wan_proto', 'dhcp') || isset('wan_proto', 'pppoe') || isset('wan_proto', 'pppoa'));
	set_visible('ifname', v);
	
	v = (isset('wan_proto', 'pppoe') || isset('wan_proto', 'pptp') || isset('wan_proto', 'pppoa'));
	set_visible('ppp_settings', v);
	set_visible('username', v);
	set_visible('passwd', v);

	v = (isset('wan_proto', 'static') || isset('wan_proto', 'pptp'));
	set_visible('wan_ip_settings', v);
	set_visible('field_wan_ipaddr', v);
	set_visible('field_wan_netmask', v);

	v = isset('wan_proto', 'static');
	set_visible('field_wan_gateway', v);
	set_visible('wan_dns', v);

	v = isset('wan_proto', 'pptp');
	set_visible('pptp_server', v);
	
	v = isset('wan_proto', 'pppoa');
	set_visible('vci', v);
	set_visible('vpi', v);
	
	v = isset('wan_proto', 'wwan');
	set_visible('wwan_service_field', v);
	set_visible('wwan_sim_settings', v);
	set_visible('apn_settings', v);

	hide('save');
	show('save');
	
	if('$bridged' == '1')
	{
/*	document.getElementById('wan_status').disabled = true; */
	document.getElementById('wan_ipaddr').disabled = true;
	document.getElementById('wan_proto').disabled = true;
	document.getElementById('wan_netmask').disabled = true;
	document.getElementById('wan_gateway').disabled = true;
	document.getElementById('wan_ifname').disabled = true;
	document.getElementById('ppp_username').disabled = true;
	document.getElementById('ppp_passwd').disabled = true;
	}
}
-->
</script>
EOF

display_form <<EOF
onchange|modechange
start_form|@TR<<WAN IPv4 Configuration>>
#field|@TR<<WAN IPv4 Status>>
#select|wan_status|$FORM_wan_status
#option|1|Enable
#option|0|Disable
field|@TR<<Connection Type>>
select|wan_proto|$FORM_wan_proto
option|dhcp|@TR<<DHCP>>
option|static|@TR<<Static IPv4>>
$PPPOE_OPTION
$PPPOA_OPTION
$WWAN_OPTION
$PPTP_OPTION
field|@TR<<Interface>>|ifname|hidden
#text|wan_ifname|$FORM_wan_ifname
string|$FORM_wan_ifname
helpitem|Interface
helptext|Helptext Interface#Your WAN interface(eth0)
#helplink|http://wiki.openwrt.org/OpenWrtDocs/Configuration#head-b62c144b9886b221e0c4b870edb0dd23a7b6acab
end_form

start_form|@TR<<IPv4 Settings>>|wan_ip_settings|hidden
field|@TR<<WAN IPv4 Address>>|field_wan_ipaddr|hidden
text|wan_ipaddr|$FORM_wan_ipaddr
field|@TR<<IPv4 Netmask>>|field_wan_netmask|hidden
text|wan_netmask|$FORM_wan_netmask
field|@TR<<Default IPv4 Gateway>>|field_wan_gateway|hidden
text|wan_gateway|$FORM_wan_gateway
$PPTP_SERVER_OPTION
$PPPOA_VCI_OPTION
helpitem|WAN IPv4 Settings
helptext|Helptext WAN IPv4 Settings#IPv4 Settings are optional for DHCP and PPTP. They are used as defaults in case the DHCP server is unavailable.
end_form

start_form|@TR<<WAN DNS Servers>>|wan_dns|hidden
listedit|wandns|$SCRIPT_NAME?wan_proto=static&amp;|$FORM_wandns|$FORM_wandnsadd
helpitem|Note
helptext|Helptext WAN DNS save#You should save your settings on this page before adding/removing DNS servers
end_form

start_form|@TR<<Preferred Connection Type>>|wwan_service_field|hidden
field|@TR<<Connection Type>>
select|wwan_service|$FORM_wwan_service
option|umts_first|@TR<<UMTS first>>
option|umts_only|@TR<<UMTS only>>
option|gprs_only|@TR<<GPRS only>>
end_form

start_form|@TR<<SIM Configuration>>|wwan_sim_settings|hidden
field|@TR<<PIN Code>>
password|wwan_pincode|$FORM_wwan_pincode
end_form

start_form|@TR<<APN Settings>>|apn_settings|hidden
field|@TR<<Select Network>>
onchange|setAPN
select|wwan_country|$FORM_wwan_country
$WWAN_COUNTRY_LIST
onchange|
field|@TR<<APN Name>>
text|wwan_apn|$FORM_wwan_apn
field|@TR<<Username>>
text|wwan_username|$FORM_wwan_username
field|@TR<<Password>>
text|wwan_passwd|$FORM_wwan_passwd
end_form

start_form|@TR<<PPP Settings>>|ppp_settings|hidden
field|@TR<<Redial Policy>>|redial|hidden
select|ppp_redial|$FORM_ppp_redial
option|demand|@TR<<Connect on Demand>>
option|persist|@TR<<Keep Alive>>
field|@TR<<Maximum Idle Time>>|demand_idletime|hidden
text|ppp_idletime|$FORM_ppp_idletime
helpitem|Maximum Idle Time
helptext|Helptext Idle Time#The number of seconds without internet traffic that the router should wait before disconnecting from the Internet (Connect on Demand only)
field|@TR<<Redial Timeout>>|persist_redialperiod|hidden
text|ppp_redialperiod|$FORM_ppp_redialperiod
helpitem|Redial Timeout
helptext|Helptext Redial Timeout#The number of seconds to wait after receiving no response from the provider before trying to reconnect
field|@TR<<Username>>|username|hidden
text|ppp_username|$FORM_ppp_username
field|@TR<<Password>>|passwd|hidden
password|ppp_passwd|$FORM_ppp_passwd
field|@TR<<MTU>>|mtu|hidden
text|ppp_mtu|$FORM_ppp_mtu
field|VCI|vci|hidden
text|wan_vci|$FORM_wan_vci
field|VPI|vpi|hidden
text|wan_vpi|$FORM_wan_vpi
end_form

start_form|@TR<<WAN IPv6 Configuration>>
field|@TR<<WAN IPv6 Address>>|field_wan6_ipaddr
text|wan6_ipaddr|$FORM_wan6_ipaddr
field|@TR<<IPv6 Netmask>>|field_wan6_netmask
text|wan6_netmask|$FORM_wan6_netmask
field|@TR<<Default IPv6 Gateway>>|field_wan6_gateway
text|wan6_gateway|$FORM_wan6_gateway
end_form
submit|save|@TR<<Save>>
EOF

footer ?>

<!--
##WEBIF:name:Network:150:WAN
-->
