#!/usr/bin/webif-page
<?
. "/usr/lib/webif/webif.sh"
###################################################################
# Bridge configuration page
#
# Description:
#       Configures bridge.
#
#Load settings from the network config file.
uci_load "network"

! empty "$FORM_add_bridge" && {
        SAVED=1
add_bridge_apply="n"
! equal "$FORM_bridge_lan" 1 && append iface "lan"
! equal "$FORM_bridge_wan" 1 && append iface "wan"

unvalid=0
equal "br-" "$FORM_bridge_name" && {
append validate_error "ERROR in Bridge Name: Invalid bridge name."
unvalid=1
}
#brnames=$(cat $file | grep interface | grep config | cut -d' ' -f 3 | sed "s/loopback//g" | sed "s/lan//g" | sed "s/wan//g" | tr -d "'" | sed "/^$/d")
brnames=$(uci show network | grep "=interface"  | cut -d'.' -f 2 | cut -d'=' -f 1)
for a in $brnames ;  do
ip=`uci get network.$a.ipaddr`
name=`uci get network.$a.name`
equal $ip "$FORM_bridge_ipaddr" && {
append validate_error "ERROR in Bridge IP Address: "$FORM_bridge_ipaddr" Ip already exist"
append validate_error "$N"
unvalid=1
}
equal "br-$name" "$FORM_bridge_name" && {
append validate_error "ERROR in Bridge Name: "$name" Name already exist"
unvalid=1
}
done

vap_list="vap0 vap1 vap2 vap3 vap4 vap5 vap6 vap7"
! equal "$FORM_bridge_wifi" 1 &&{
for vap_id in $vap_list ; do
  disable=`uci get ${vap_id}.${vap_id}.disabled`
  if [ "$disable" -eq 0 ]; then
    ip=`uci get ${vap_id}.${vap_id}.ipaddr`
    equal "$ip" "$FORM_bridge_ipaddr" && {
      append validate_error "ERROR in Bridge IP Address: "$FORM_bridge_ipaddr" Ip already exist"
      unvalid=1
      break
    }
  fi
done
}

validate <<EOF
bridgename|FORM_bridge_name|@TR<<Bridge Name>>|required|$FORM_bridge_name
ip|FORM_bridge_ipaddr|@TR<<Bridge IP Address>>|required|$FORM_bridge_ipaddr
netmask|FORM_bridge_netmask|@TR<<Bridge Netmask>>|required|$FORM_bridge_netmask
EOF
equal "$?" 0 && ! equal "$unvalid" 1 && {
bridgeid=`uci get bridge.general.count`
bridgeid=`expr $bridgeid + 1`
bridge_name=$(echo $FORM_bridge_name | sed "s/^br-//g")
uci_add network interface "$bridge_name"
uci_set network $bridge_name name "$bridge_name"
uci_set network $bridge_name ipaddr "$FORM_bridge_ipaddr"
uci_set network $bridge_name  netmask "$FORM_bridge_netmask"
#uci_set network $bridge_name status "$FORM_bridge_status"
uci_set network $bridge_name proto static
uci_set network $bridge_name type bridge

equal "$FORM_bridge_lan" 1 && {
uci_set network $bridge_name lan "$FORM_bridge_lan"
append ifname "eth2"
append int "lan"
}
equal "$FORM_bridge_wan" 1 && {
uci_set network $bridge_name wan "$FORM_bridge_wan"
append ifname "eth0"
append int "wan"
}
equal "$FORM_bridge_wifi" 1 && {
uci_set network $bridge_name wifi "$FORM_bridge_wifi"
for vap_id in $vap_list ; do
  disable=`uci get ${vap_id}.${vap_id}.disabled`
  if [ "$disable" -eq 0 ]; then
    wifi_iface=`uci get ${vap_id}.${vap_id}.interface`
    append ifname $wifi_iface
  fi
done
append int "wifi"
}
uci_set network $bridge_name ifname "$ifname"
uci_set network $bridge_name int "$int"
#case $int in
#*lan*)
#mac=`ifconfig eth2 | grep HWaddr | cut -d ' ' -f 11`
#break;;
#*wan*)
#mac=`ifconfig eth0 | grep HWaddr | cut -d ' ' -f 11`
#break;;
#esac
#uci_set network $bridge_name mac "$mac"
add_bridge_apply="y"
}
}

! empty "$FORM_display_bridge" && {
brname=$FORM_display_bridge
FORM_bridge_name=${bridge_name:-$(uci get network.$brname.name)}
FORM_bridge_ipaddr=${bridge_ipaddr:-$(uci get network.$brname.ipaddr)}
FORM_bridge_netmask=${bridge_netmask:-$(uci get network.$brname.netmask)}
#FORM_bridge_status=${bridge_status:-$(uci get network.$brname.status)}
FORM_bridge_lan=${bridge_lan:-$(uci get network.$brname.lan)}
FORM_bridge_wan=${bridge_wan:-$(uci get network.$brname.wan)}
FORM_bridge_wifi=${bridge_wifi:-$(uci get network.$brname.wifi)}
}

! empty "$FORM_save_bridge" && {
save_bridge_apply="n"
#brnames=$(cat /etc/config/network | grep interface | grep config | cut -d' ' -f 3 | sed "s/loopback//g" | sed "s/lan//g" | sed "s/wan//g" | tr -d "'")
brnames=$(uci show network | grep "=interface"  | cut -d'.' -f 2 | cut -d'=' -f 1 | sed "s/loopback//g" | sed "s/lan//g" | sed "s/wan//g" | sed "/^$/d")
for i in $brnames ; do
! equal "$FORM_bridge_name" "br-$i" && {
append iface "$i"
}
done
! equal "$FORM_bridge_lan" 1 && append iface "lan"
! equal "$FORM_bridge_wan" 1 && append iface "wan"

unvalid=0
for a in $iface ; do
ip=`uci get network.$a.ipaddr`
name=`uci get network.$a.name`
equal $ip "$FORM_bridge_ipaddr" && {
append validate_error "ERROR in Bridge IP Address: "$FORM_bridge_ipaddr" Ip already exist" 
unvalid=1
}
equal $name "$FORM_bridge_name" && {
append validate_error "ERROR in Bridge Name: "$FORM_bridge_name" Name already exist"
unvalid=1
}
done

vap_list="vap0 vap1 vap2 vap3 vap4 vap5 vap6 vap7"
! equal "$FORM_bridge_wifi" 1 &&{
for vap_id in $vap_list ; do
  disable=`uci get ${vap_id}.${vap_id}.disabled`
  if [ "$disable" -eq 0 ]; then
    ip=`uci get ${vap_id}.${vap_id}.ipaddr`
    equal "$ip" "$FORM_bridge_ipaddr" && {
      append validate_error "ERROR in Bridge IP Address: "$FORM_bridge_ipaddr" Ip already exist"
      unvalid=1
      break
    }
  fi
done
}

bridge_name=$(echo $FORM_bridge_name | sed "s/^br-//g")
[ -n "$brname" ] && {
lan=`uci get network.$brname.lan`
wan=`uci get network.$brname.wan`
wifi=`uci get network.$brname.wifi`
#bridge_prev_status=`uci get network.$brname.status`
}

SAVED=1
validate <<EOF
bridgename|FORM_bridge_name|@TR<<Bridge Name>>|required|$bridge_name
ip|FORM_bridge_ipaddr|@TR<<Bridge IP Address>>|required|$FORM_bridge_ipaddr
netmask|FORM_bridge_netmask|@TR<<Bridge Netmask>>|required|$FORM_bridge_netmask
EOF
equal "$?" 0 && ! equal "$unvalid" 1 && {
bridge_dhcp_enable=`uci get dhcp.$bridge_name.enabled`
equal "$bridge_dhcp_enable" 1 && {
  bridge_prev_ipaddr=`uci get network.$bridge_name.ipaddr`
  bridge_prev_netmask=`uci get network.$bridge_name.netmask`
  bridge_dhcp_conf="n"
#  equal "$FORM_bridge_status" 1 && {
    equal "$bridge_prev_ipaddr" "$FORM_bridge_ipaddr" || bridge_dhcp_conf="y"
    equal "$bridge_prev_netmask" "$FORM_bridge_netmask" || bridge_dhcp_conf="y"
#  }
#  equal "$FORM_bridge_status" "$bridge_prev_status" || bridge_dhcp_conf="y"
  equal "$bridge_dhcp_conf" "y" && {
    uci_add "dhcp" "dhcp" "$bridge_name"
  }
}
uci_add network interface "$bridge_name"
uci_set network $bridge_name name "$bridge_name"
uci_set network $bridge_name ipaddr "$FORM_bridge_ipaddr"
uci_set network $bridge_name netmask "$FORM_bridge_netmask"
#uci_set network $bridge_name status "$FORM_bridge_status"
uci_set network $bridge_name lan "$FORM_bridge_lan"
uci_set network $bridge_name wan "$FORM_bridge_wan"
uci_set network $bridge_name wifi "$FORM_bridge_wifi"

 

equal "$FORM_bridge_lan" 1 && {
append ifname "eth2"
append int "lan"
}
equal "$FORM_bridge_wan" 1 && {
append ifname "eth0"
append int "wan"
}
equal "$FORM_bridge_wifi" 1 && {
for vap_id in $vap_list ; do
  disable=`uci get ${vap_id}.${vap_id}.disabled`
  if [ "$disable" -eq 0 ]; then
    wifi_iface=`uci get ${vap_id}.${vap_id}.interface`
    append ifname $wifi_iface
  fi
done
append int "wifi"
}
uci_set network $bridge_name ifname "$ifname"
uci_set network $bridge_name int "$int"
#case $int in
#*lan*)
#mac=`ifconfig eth2 | grep HWaddr | cut -d ' ' -f 11`
#break;;
#*wan*)
#mac=`ifconfig eth0 | grep HWaddr | cut -d ' ' -f 11`
#break;;
#esac
#uci_set network $bridge_name mac "$mac"
save_bridge_apply="y"
}
}

! empty "$FORM_delete_bridge" && {
#count=`uci get bridge.general.count`
#bridgeid=$FORM_delete_bridge
brname=$FORM_delete_bridge
#lan=`uci get network.br$bridgeid.lan`
#wan=`uci get network.br$bridgeid.wan`
#wifi=`uci get network.br$bridgeid.wifi`
#brname=`uci get bridge.general.brname$FORM_delete_bridge`
lan=`uci get network.$brname.lan`
wan=`uci get network.$brname.wan`
wifi=`uci get network.$brname.wifi`
#brstatus=`uci get network.$brname.status`
#equal "$brstatus" 1 && {
  equal "$lan" 1 && {
    lan_dhcp_enable=`uci get dhcp.lan.enabled`
    equal "$lan_dhcp_enable" 1 && uci_add "dhcp" "dhcp" "lan"
  }
  equal "$wan" 1 && {
    wan_dhcp_enable=`uci get dhcp.wan.enabled`
    equal "$wan_dhcp_enable" 1 && uci_add "dhcp" "dhcp" "wan"
  }
  equal "$wifi" 1 && {
    wifi_dhcp_enable=`uci get dhcp.vap0.enabled`
    equal "$wifi_dhcp_enable" 1 || wifi_dhcp_enable=`uci get dhcp.vap1.enabled`
    equal "$wifi_dhcp_enable" 1 || wifi_dhcp_enable=`uci get dhcp.vap2.enabled`
    equal "$wifi_dhcp_enable" 1 || wifi_dhcp_enable=`uci get dhcp.vap3.enabled`
    equal "$wifi_dhcp_enable" 1 || wifi_dhcp_enable=`uci get dhcp.vap4.enabled`
    equal "$wifi_dhcp_enable" 1 || wifi_dhcp_enable=`uci get dhcp.vap5.enabled`
    equal "$wifi_dhcp_enable" 1 || wifi_dhcp_enable=`uci get dhcp.vap6.enabled`
    equal "$wifi_dhcp_enable" 1 || wifi_dhcp_enable=`uci get dhcp.vap7.enabled`
    equal "$wifi_dhcp_enable" 1 && {
      uci_add "dhcp" "dhcp" "vap0"
      uci_add "dhcp" "dhcp" "vap1"
      uci_add "dhcp" "dhcp" "vap2"
      uci_add "dhcp" "dhcp" "vap3"
      uci_add "dhcp" "dhcp" "vap4"
      uci_add "dhcp" "dhcp" "vap5"
      uci_add "dhcp" "dhcp" "vap6"
      uci_add "dhcp" "dhcp" "vap7"
    }
  }
#}
bridge_dhcp_enable=`uci get dhcp.$brname.enabled`
equal "$bridge_dhcp_enable" 1 && uci_remove dhcp $brname 
#equal "$lan" 1 && uci_set bridge general lan 0
#equal "$wan" 1 && uci_set bridge general wan 0
#equal "$wifi" 1 && uci_set bridge general wifi 0
uci_remove network $brname
#uci_set bridge general "del$brname" "1"
#bridgeid_next=`expr $bridgeid + 1`
#while [ $bridgeid -lt $count ]
#do
##uci_rename network br`expr $bridgeid + 1` br$bridgeid
#name1=`uci get bridge.general.brname$bridgeid`
#name2=`uci get bridge.general.brname$bridgeid_next`
##uci_rename network $name2 $name1
#uci_set bridge general brname$bridgeid "$name2"
#bridgeid=`expr $bridgeid + 1`
#bridgeid_next=`expr $bridgeid_next + 1`
#done
#uci_set bridge general brname$bridgeid ""
#uci_set bridge general count `expr $count - 1`
}

header "Network" "Bridge" "@TR<<Bridge Configuration>>" ' ' 

! empty "$validate_error" && {
echo "<span class="error">$validate_error</span>"
}

brnames=$(uci show network | grep "=interface"  | cut -d'.' -f 2 | cut -d'=' -f 1 | sed "s/loopback//g" | sed "s/lan//g" | sed "s/wan//g" | sed "/^$/d")
count=$(uci show network | grep "=interface"  | cut -d'.' -f 2 | cut -d'=' -f 1 | sed "s/loopback//g" | sed "s/lan//g" | sed "s/wan//g" | sed "/^$/d" | wc -l)
#brnames=$(cat $file | grep interface | grep config | cut -d' ' -f 3 | sed "s/loopback//g" | sed "s/lan//g" | sed "s/'wan'//g" | tr -d "'" | sed "/^$/d")
#count=$(cat $file | grep interface | grep config | cut -d' ' -f 3 | sed "s/loopback//g" | sed "s/lan//g" | sed "s/wan//g" | tr -d "'" | sed "/^$/d" | wc -l)

echo "<div class=\"settings\">"
echo "<th colspan=\"11\"><h3><strong>" List of Existing Bridges: "</strong></h3></th>"
echo "<div class=\"settings-content-inner\">"
echo "<table style=\"width: 96%; text-align: left; font-size: 0.8em;\" border=\"0\" cellpadding=\"3\" cellspacing=\"3\" align=\"center\"><tbody>"
echo "<tr class=\"odd\"><th>Bridge Name</th><th>Interfaces</th><th>IP Address</th><th style=\"text-align: center;\">Actions</th></tr>"
if [ "$count" = "0" ]; then
  echo "<tr class=\"tr_bg\"><td colspan=\"4\">There are no bridges</td></tr>"
fi
#i=1
#while [ $i -le "$count" ]
#do
#name=`uci get network.br$i.name`
#ipaddr=`uci get network.br$i.ipaddr`
#status=`uci get network.br$i.status`
#lan=`uci get network.br$i.lan`
#wan=`uci get network.br$i.wan`
#wifi=`uci get network.br$i.wifi`
#name=`uci get bridge.general.brname$i`
bridgelan=bridgewan=bridgewifi=0
for brname in $brnames ; do
ipaddr=`uci get network.$brname.ipaddr`
#status=`uci get network.$brname.status`
lan=`uci get network.$brname.lan`
wan=`uci get network.$brname.wan`
wifi=`uci get network.$brname.wifi`
echo "<tr class=\"tr_bg\">"
echo "<td>br-$brname</td>"
echo "<td>"
equal "$lan" 1 && { 
bridgelan=1
echo "LAN"
}
equal "$wan" 1 && { 
bridgewan=1
echo " WAN"
}
equal "$wifi" 1 && { 
bridgewifi=1
echo " Wi-Fi"
}
echo "</td>"
echo "<td>$ipaddr</td>"
echo "<td style=\"text-align: center;\"><a href=\"$SCRIPT_NAME?display_bridge=$brname\"><img alt=\"@TR<<edit>>\" src=\"/images/edit.gif\" title=\"@TR<<edit>>\" /></a>  <a href=\"$SCRIPT_NAME?delete_bridge=$brname\"><img alt=\"@TR<<delete>>\" src=\"/images/x.gif\" title=\"@TR<<delete>>\" /></a></td></tr>"

i=`expr $i + 1`
done
echo "</tbody></table></div><div class=\"clearfix\">&nbsp;</div></div>"

wififound=`uci get wireless.general.found`
#if [ "$bridgelan" = "0" ] || [ "$bridgewan" = "0" ] || [ "$wififound" = "1" ] && [ "$bridgewifi" != "1" ]; then
if [ "$bridgelan" != "1" ] || [ "$bridgewan" != "1" ] || [ "$wififound" = "1" -a "$bridgewifi" != "1" ]; then
echo "<a class=\"addnew_ico\"  href=\"$SCRIPT_NAME?new_bridge=1\" ><span>@TR<<Add New>></span></a><br><br><br>"
fi

add_bridge_failed="n"
[ -n "$FORM_add_bridge" -a "$add_bridge_apply" = "n" ] && add_bridge_failed="y"
[ -n "$FORM_new_bridge" -o "$add_bridge_failed" = "y" ] && {
#! empty "$FORM_new_bridge" && {
wififound=`uci get wireless.general.radio0_found`
[ "$wififound" -eq 0 ] && wififound=`uci get wireless.general.radio1_found`
[ "$wififound" -eq 0 ] && wififound=`uci get wireless.general.radio2_found`
! equal "$bridgelan" 1 && check="checkbox|bridge_lan|$FORM_bridge_lan|1|LAN"
! equal "$bridgewan" 1 && check="$check
                   checkbox|bridge_wan|$FORM_bridge_wan|1|WAN"
equal "$wififound" 1 && ! equal "$bridgewifi" 1 && check="$check
                    checkbox|bridge_wifi|$FORM_bridge_wifi|1|Wi-Fi"
#field|@TR<<Bridge Status>>|bridge_status
#select|bridge_status|$FORM_bridge_status
#option|1|@TR<<Enable>>
#option|0|@TR<<Disable>>
display_form <<EOF
start_form|@TR<<New Bridge Configuration>>
formtag_begin|add_bridge|$SCRIPT_NAME
field|@TR<<Bridge Name>>|bridge_name
text|bridge_name|br-$FORM_bridge_name
field|@TR<<Bridge IP Address>>|bridge_ipaddr
text|bridge_ipaddr|$FORM_bridge_ipaddr
field|@TR<<Bridge Netmask>>|bridge_netmask
text|bridge_netmask|$FORM_bridge_netmask
field|@TR<<Bridge Interfaces>>|bridge_ifaces
$check
#checkbox|bridge_lan|$FORM_bridge_lan|1|LAN
#checkbox|bridge_wan|$FORM_bridge_wan|1|WAN
#checkbox|bridge_wifi|$FORM_bridge_wifi|1|Wi-Fi
field||spacer1
string|<br />
submit|add_bridge|@TR<<Create>>
submit||@TR<<Cancel>>
formtag_end
end_form
EOF
}

save_bridge_failed="n"
[ -n "$FORM_save_bridge" -a "$save_bridge_apply" = "n" ] && save_bridge_failed="y"
[ -n "$FORM_display_bridge" -o "$save_bridge_failed" = "y" ] && {
[ "$save_bridge_failed" = "y" ] && {
  FORM_display_bridge=$FORM_bridgeid
}
#! empty "$FORM_display_bridge" && {
wififound=`uci get wireless.general.radio0_found`
[ "$wififound" -eq 0 ] && wififound=`uci get wireless.general.radio1_found`
[ "$wififound" -eq 0 ] && wififound=`uci get wireless.general.radio2_found`
! equal "$bridgelan" 1 && check="checkbox|bridge_lan|$FORM_bridge_lan|1|LAN"
! equal "$bridgewan" 1 && check="$check
                   checkbox|bridge_wan|$FORM_bridge_wan|1|WAN"
equal "$wififound" 1 && ! equal "$bridgewifi" 1 && check="$check
                    checkbox|bridge_wifi|$FORM_bridge_wifi|1|Wi-Fi"
#lan_br=`uci get network.br$FORM_display_bridge.lan`
#wan_br=`uci get network.br$FORM_display_bridge.wan`
#wifi_br=`uci get network.br$FORM_display_bridge.wifi`
lan_br=`uci get network.$brname.lan`
wan_br=`uci get network.$brname.wan`
wifi_br=`uci get network.$brname.wifi`
equal "$lan_br" 1 && check="$check
                           checkbox|bridge_lan|$FORM_bridge_lan|1|LAN"
equal "$wan_br" 1 && check="$check
                   checkbox|bridge_wan|$FORM_bridge_wan|1|WAN"
equal "$wififound" 1 && equal "$wifi_br" 1 && check="$check
                    checkbox|bridge_wifi|$FORM_bridge_wifi|1|Wi-Fi"

#field|@TR<<Bridge ID>>
#text|bridgeid|br-$FORM_display_bridge|||readonly
#field|@TR<<Bridge Status>>|bridge_status
#select|bridge_status|$FORM_bridge_status
#option|1|@TR<<Enable>>
#option|0|@TR<<Disable>>
display_form <<EOF
onchange|modechange
start_form|@TR<<Edit Bridge br-$brname>>
formtag_begin|save_bridge|$SCRIPT_NAME
field|@TR<<Bridge Name>>|bridge_name
text|bridge_name|br-$FORM_bridge_name|||readonly
field|@TR<<Bridge IP Address>>|bridge_ipaddr
text|bridge_ipaddr|$FORM_bridge_ipaddr
field|@TR<<Bridge Netmask>>|bridge_netmask
text|bridge_netmask|$FORM_bridge_netmask
field|@TR<<Bridge Interfaces>>|bridge_ifaces
$check
field||spacer1>
string|<br />
submit|save_bridge|@TR<<Save>>
reset||@TR<<Reset>>
submit||@TR<<Cancel>>
formtag_end
end_form
EOF
}

footer ?>
<!--
##WEBIF:name:Network:250:Bridge
-->
