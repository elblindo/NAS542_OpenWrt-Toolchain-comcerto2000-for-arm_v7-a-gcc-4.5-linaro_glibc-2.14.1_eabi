#!/usr/bin/webif-page
<?
. /usr/lib/webif/webif.sh
uci_load "vlan"
uci_load "network"

! empty "$FORM_new_vlan" && {
        SAVED=1
count=`uci get vlan.general.count`
i=1
unvalid=0
add_vlan_apply="n"
while [ "$i" -le "$count" ]
do
#config_get ipaddr vlan$i ipaddr
#config_get id vlan$i id
#config_get net vlan$i net
net=`uci get vlan.vlan$i.net`
edit=`uci get vlan.vlan$i.edit`
if [ "$edit" = "1" ];then
id=`uci get vlan.vlan$i.id_new`
ipaddr=`uci get vlan.vlan$i.ipaddr_new`
else
id=`uci get vlan.vlan$i.id`
ipaddr=`uci get vlan.vlan$i.ipaddr`
fi
equal "$ipaddr" "$FORM_ipaddr" && {
append validate_error "ERROR in IP-Address: "$FORM_ipaddr" IP already exist"
unvalid=1
#break
}
equal "$net" "$FORM_net" && equal "$id" "$FORM_id" && {
append validate_error "ERROR in VLAN ID: "$FORM_id" VLAN ID already exist"
unvalid=1
#break
}
i=`expr $i + 1`
done
[ "$FORM_id" = "4095" -o "$FORM_id" = "0" ] && {
append validate_error "ERROR in VLAN ID: "$FORM_id" is reserved VLAN ID"
unvalid=1
}
validate <<EOF
int|FORM_id|@TR<<VLAN ID>>|required min=1 max=4094|$FORM_id
ip|FORM_ipaddr|@TR<<IP-Address>>|required|$FORM_ipaddr
netmask|FORM_netmask|@TR<<Netmask>>|required|$FORM_netmask
EOF
        equal "$?" 0 && ! equal "$unvalid" 1 && {
	count=`uci get vlan.general.count`
	count=`expr $count + 1`
	uci_add vlan vlan vlan$count
	uci_set vlan vlan$count net "$FORM_net"
	uci_set vlan vlan$count id "$FORM_id"
	uci_set vlan vlan$count ipaddr "$FORM_ipaddr"
	uci_set vlan vlan$count netmask "$FORM_netmask"
	uci_set vlan general count $count
	config_set vlan$count net "$FORM_net"
	config_set vlan$count id "$FORM_id"
	config_set vlan$count ipaddr "$FORM_ipaddr"
	config_set vlan$count netmask "$FORM_netmask"
	add_vlan_apply="y"
	}
}

! empty "$FORM_display_vlan" && {
	i=$FORM_display_vlan
#	config_get FORM_net vlan$vlan net
#	config_get FORM_id vlan$vlan id
#	config_get FORM_ipaddr vlan$vlan ipaddr
#	config_get FORM_netmask vlan$vlan netmask
	FORM_net=`uci get vlan.vlan$i.net`
	edit=`uci get vlan.vlan$i.edit`
	if [ "$edit" = "1" ];then
	  FORM_id=`uci get vlan.vlan$i.id_new`
	  FORM_ipaddr=`uci get vlan.vlan$i.ipaddr_new`
	  FORM_netmask=`uci get vlan.vlan$i.netmask_new`
	else
	  FORM_id=`uci get vlan.vlan$i.id`
	  FORM_ipaddr=`uci get vlan.vlan$i.ipaddr`
	  FORM_netmask=`uci get vlan.vlan$i.netmask`
	fi
}

! empty "$FORM_save_vlan" && {
        SAVED=1
count=`uci get vlan.general.count`
i=1
unvalid=0
save_vlan_apply="n"
while [ "$i" -le "$count" ]
do
  if [ "$i" -ne "$FORM_vlanid" ] ; then
#    config_get ipaddr vlan$i ipaddr
#    config_get id vlan$i id
#    config_get net vlan$i net
    net=`uci get vlan.vlan$i.net`
    edit=`uci get vlan.vlan$i.edit`
    if [ "$edit" = "1" ];then
      id=`uci get vlan.vlan$i.id_new`
      ipaddr=`uci get vlan.vlan$i.ipaddr_new`
    else
      id=`uci get vlan.vlan$i.id`
      ipaddr=`uci get vlan.vlan$i.ipaddr`
    fi
    equal "$ipaddr" "$FORM_ipaddr" && {
      append validate_error "ERROR in IP-Address: "$FORM_ipaddr" IP already exist"
      unvalid=1
    #  break
    }
    equal "$net" "$FORM_net" && equal "$id" "$FORM_id" && {
      append validate_error "ERROR in VLAN ID: "$FORM_id" VLAN ID already exist"
      unvalid=1
     # break
    }
  fi
i=`expr $i + 1`
done
[ "$FORM_id" = "4095" -o "$FORM_id" = "0" ] && {
append validate_error "ERROR in VLAN ID: "$FORM_id" is reserved VLAN ID"
unvalid=1
}
validate <<EOF
int|FORM_id|@TR<<VLAN ID>>|required min=1 max=4094|$FORM_id
ip|FORM_ipaddr|@TR<<IP-Address>>|required|$FORM_ipaddr
netmask|FORM_netmask|@TR<<Netmask>>|required|$FORM_netmask
EOF
        equal "$?" 0 && ! equal "$unvalid" 1 && {
        uci_set vlan vlan$FORM_vlanid net "$FORM_net"
        uci_set vlan vlan$FORM_vlanid id_new "$FORM_id"
	uci_set vlan vlan$FORM_vlanid ipaddr_new "$FORM_ipaddr"
	uci_set vlan vlan$FORM_vlanid netmask_new "$FORM_netmask"
	uci_set vlan vlan$FORM_vlanid edit "1"
	config_set vlan$FORM_vlanid net "$FORM_net"
	config_set vlan$FORM_vlanid id "$FORM_id"
	config_set vlan$FORM_vlanid ipaddr "$FORM_ipaddr"
	config_set vlan$FORM_vlanid netmask "$FORM_netmask"
	save_vlan_apply="y"
	}
}

! empty "$FORM_delete_vlan" && {
	count=`uci get vlan.general.count`
	count_delete=`uci get vlan.general.count_delete`
	count_delete=`expr $count_delete + 1`
	vlan=$FORM_delete_vlan
#	uci_remove vlan vlan$vlan
	uci_rename vlan vlan$vlan vlan_delete$count_delete
	uci_set vlan general count_delete $count_delete
	while [ $vlan -lt $count ]
	do
	uci_rename vlan vlan`expr $vlan + 1` vlan$vlan
	vlan=`expr $vlan + 1`
	done
	uci_set vlan general count `expr $count - 1`
#	config_set general count `expr $count - 1`
}

#####################################################################
header "Network" "VLAN" "@TR<<VLAN Configuration>>" '' 
#####################################################################
! empty "$validate_error" && {
echo "<span class=\"error\">$validate_error</span>"
}

count=`uci get vlan.general.count`

echo "<div class=\"settings\">"
echo "<th colspan=\"11\"><h3><strong>" List of created VLAN: "</strong></h3></th>"
echo "<div class=\"settings-content-inner\">"
echo "<table style=\"width: 96%; text-align: left; font-size: 0.8em;\" border=\"0\" cellpadding=\"3\" cellspacing=\"3\" align=\"center\"><tbody>"
echo "<tr class=\"odd\"><th>Interface</th><th>Network</th><th>VLAN ID</th><th>IP-address</th><th>Netmask</th><th style=\"text-align: center;\">Actions</th></tr>"
if [ "$count" = "0" ]; then
  echo "<tr class=\"tr_bg\"><td colspan=\"6\">There are no vlans</td></tr>"
fi
i=1
while [ "$i" -le "$count" ]
do
net=`uci get vlan.vlan$i.net`
edit=`uci get vlan.vlan$i.edit`
if [ "$edit" = "1" ];then
id=`uci get vlan.vlan$i.id_new`
ipaddr=`uci get vlan.vlan$i.ipaddr_new`
netmask=`uci get vlan.vlan$i.netmask_new`
else
id=`uci get vlan.vlan$i.id`
ipaddr=`uci get vlan.vlan$i.ipaddr`
netmask=`uci get vlan.vlan$i.netmask`
fi
ifname=`uci get network.$net.ifname`
#config_get net vlan$i net
#config_get id vlan$i id
#config_get ipaddr vlan$i ipaddr
#config_get netmask vlan$i netmask
#config_get ifname $net ifname
echo "<tr class=\"tr_bg\"><td>$ifname.$id</td><td>$net</td><td>$id</td><td>$ipaddr</td><td>$netmask</td><td style=\"text-align: center;\"><a href=\"$SCRIPT_NAME?display_vlan=$i\"><img alt=\"@TR<<edit>>\" src=\"/images/edit.gif\" title=\"@TR<<edit>>\" /></a>  <a href=\"$SCRIPT_NAME?delete_vlan=$i\"><img alt=\"@TR<<delete>>\" src=\"/images/x.gif\" title=\"@TR<<delete>>\" /></a></td></tr>"
i=`expr $i + 1`
done
#echo "</tbody></table><div class=\"clearfix\">&nbsp;</div></div></div>"
echo "</tbody></form></table></div><div class=\"clearfix\">&nbsp;</div></div>"

echo "<a class=\"addnew_ico\"href=\"$SCRIPT_NAME?add_new_vlan=1\"><span class=\"add\">@TR<<Add New>></span></a><br><br>"

#display_form <<EOF
#start_form
#field||spacer1
#string|<br />
#formtag_begin|add_new_vlan|$SCRIPT_NAME
#submit|add_new_vlan|@TR<< Add New >>
#formtag_end
#end_form
#EOF

add_vlan_failed="n"
[ -n "$FORM_new_vlan" -a "$add_vlan_apply" = "n" ] && add_vlan_failed="y"
[ -n "$FORM_add_new_vlan" -o "$add_vlan_failed" = "y" ] && {
#! empty "$FORM_add_new_vlan" && {

display_form <<EOF
start_form|@TR<<New VLAN>>
formtag_begin|new_vlan|$SCRIPT_NAME
field|@TR<<Network>>
select|net|$FORM_net
option|lan|@TR<<LAN>>
option|wan|@TR<<WAN>>
field|@TR<<VLAN ID>>
text|id|$FORM_id
field|@TR<<IP-Address>>
text|ipaddr|$FORM_ipaddr
field|@TR<<Netmask>>
text|netmask|$FORM_netmask
field||spacer1
string|<br />
submit|new_vlan|@TR<<Create>>
reset||@TR<<Reset>>
submit||@TR<<Cancel>>
formtag_end
end_form
EOF
}
save_vlan_failed="n"
[ -n "$FORM_save_vlan" -a "$save_vlan_apply" = "n" ] && save_vlan_failed="y"
[ -n "$FORM_display_vlan" -o "$save_vlan_failed" = "y" ] && {
[ "$save_vlan_failed" = "y" ] && {
  FORM_display_vlan=$FORM_vlanid
}


#! empty "$FORM_display_vlan" && {

display_form <<EOF
onchange|modechange
start_form|@TR<<Edit VLAN $FORM_display_vlan>>
formtag_begin|save_vlan|$SCRIPT_NAME
field|@TR<<VLAN ID>>||hidden
text|vlanid|$FORM_display_vlan|||readonly
field|@TR<<Network>>
text|net|$FORM_net|||readonly
#select|net|$FORM_net
#option|lan|@TR<<LAN>>
#option|wan|@TR<<WAN>>
field|@TR<<VLAN ID>>
text|id|$FORM_id
field|@TR<<IP-Address>>
text|ipaddr|$FORM_ipaddr
field|@TR<<Netmask>>
text|netmask|$FORM_netmask
field||spacer1>
string|<br />
submit|save_vlan|@TR<<Save>>
reset||@TR<<Reset>>
submit||@TR<<Cancel>>
formtag_end
end_form
EOF
}

footer ?>

<!--
##WEBIF:name:Network:210:VLAN
-->
