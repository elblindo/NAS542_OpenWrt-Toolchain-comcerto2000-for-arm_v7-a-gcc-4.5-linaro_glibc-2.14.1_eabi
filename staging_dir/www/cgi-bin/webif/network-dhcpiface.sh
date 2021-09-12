#!/usr/bin/webif-page
<?
. /usr/lib/webif/webif.sh
header "Network" "DHCP" "@TR<<DHCP Interfaces>>" '' "$SCRIPT_NAME"
#ShowNotUpdatedWarning

#config_cb() {
#config_get TYPE "$CONFIG_SECTION" TYPE
#case "$TYPE" in
#        interface)
#               append network_devices "$CONFIG_SECTION"
#        ;;
#esac
#}

uci_load network
uci_load dhcp

vap_list="vap0 vap1 vap2 vap3 vap4 vap5 vap6 vap7"
exists /tmp/.webif/file-dnsmasq.conf  && DNSMASQ_FILE=/tmp/.webif/file-dnsmasq.conf || DNSMASQ_FILE=/etc/dnsmasq.conf
exists $DNSMASQ_FILE || touch $DNSMASQ_FILE >&- 2>&-

update_dnsmasq() {
	exists /tmp/.webif/* || mkdir -p /tmp/.webif
	awk -v "mode=$1" -v "iface=$2" -v "value=$3" -v "options=$4" '
BEGIN {
	FS="[=]"
	line_added = 0
}
{ processed = 0 }
(mode == "del") && ($0 == value) {
	if ($0 != value) {
		print $2
	}
	processed = 1
}
(mode == "_add") {
	print $0 " " name
	host_added = 1
	processed = 1
}
processed == 0 {
	print $0
}
END {
	if ((mode == "add") && (line_added == 0)) print "dhcp-option=" iface "," value "," options
}' "$DNSMASQ_FILE" > /tmp/.webif/file-dnsmasq.conf-new
	mv "/tmp/.webif/file-dnsmasq.conf-new" "/tmp/.webif/file-dnsmasq.conf"
	DNSMASQ_FILE=/tmp/.webif/file-dnsmasq.conf
}


empty "$FORM_add_line" || {
	update_dnsmasq add "$FORM_iface" "$FORM_hop" "$FORM_values"
}

empty "$FORM_remove_line" || update_dnsmasq del "$FORM_iface" "$FORM_line"

	if [ -n "$FORM_iface" ]; then
		if empty "$FORM_submit"; then
			config_get FORM_dhcp_enabled ${FORM_iface} enabled
			config_get FORM_dhcp_start ${FORM_iface} start
			config_get FORM_dhcp_num ${FORM_iface} limit
			config_get FORM_dhcp_lease ${FORM_iface} leasetime
		fi
		
#		FORM_dhcp_lease=${FORM_dhcp_lease:-12h}
		# cut is to fix for cases where an IP address got stuck in this instead of mere integer
		FORM_dhcp_start=$(echo "$FORM_dhcp_start" | cut -d '.' -f 4)
		
		# convert lease time to minutes
		lease_int=$(echo "$FORM_dhcp_lease" | tr -d [a-z][A-Z])			
		time_units=$(echo "$FORM_dhcp_lease" | tr -d [0-9])
		if [ -n "$lease_int" ]; then
		case "$time_units" in
			"h" | "H" ) let "FORM_dhcp_lease=$lease_int*60";;
			"d" | "D" ) let "FORM_dhcp_lease=$lease_int*24*60";;
			"s" | "S" ) let "FORM_dhcp_lease=$lease_int/60";;
			"w" | "W" ) let "FORM_dhcp_lease=$lease_int*7*24*60";;
			"m" | "M" | "" ) let "FORM_dhcp_lease=$lease_int";;  # minutes 			
#			*) FORM_dhcp_lease="$lease_int"; echo "<br />WARNING: Unknown suffix found on dhcp lease time: $FORM_dhcp_lease";;
		esac					
		fi
			
	fi
#string|FORM_${FORM_iface}_dhcp_iface|DHCP iface||$FORM_dhcp_iface
if [ -n "$FORM_submit" ]; then
	FAILED=0
	validate <<EOF
int|FORM_${FORM_iface}_dhcp_enabled|DHCP enabled||$FORM_dhcp_enabled
int|FORM_${FORM_iface}_dhcp_start|DHCP start|required min=1 max=254|$FORM_dhcp_start
EOF
	if [ "$?" -ne 0 ]; then
	  FAIL_MESSAGE="Please enter valid number in \"DHCP start\" field"
	  FAILED=1
	  max_dhcp_num=254
	else
	  max_dhcp_num=`expr 255 - $FORM_dhcp_start`
	fi
	validate <<EOF
int|FORM_${FORM_iface}_dhcp_num|DHCP num|required min=1 max=$max_dhcp_num|$FORM_dhcp_num
EOF
	if [ "$?" -ne 0 ]; then
	  FAIL_MESSAGE="$FAIL_MESSAGE <br>Please enter valid number in \"DHCP NUM\" field"
	  FAILED=1
	fi
	validate <<EOF
int|FORM_${FORM_iface}_dhcp_lease|DHCP lease time|min=1 max=2147483647 required|$FORM_dhcp_lease
EOF
	if [ "$?" -ne 0 ]; then
	  FAIL_MESSAGE="$FAIL_MESSAGE <br>Please enter valid number in \"lease time\" field"
	  FAILED=1
	fi
	if equal "$FAILED" 0; then
		SAVED=1
		uci_add "dhcp" "dhcp" "${FORM_iface}"
		uci_set "dhcp" "${FORM_iface}" "enabled" "$FORM_dhcp_enabled"
		uci_set "dhcp" "${FORM_iface}" "interface" "$FORM_iface"
		uci_set "dhcp" "${FORM_iface}" "start" "$FORM_dhcp_start"
		uci_set "dhcp" "${FORM_iface}" "limit" "$FORM_dhcp_num"
		uci_set "dhcp" "${FORM_iface}" "leasetime" "${FORM_dhcp_lease}m"

		config_set "${FORM_iface}" "enabled" "$FORM_dhcp_enabled"
	else
#		echo "<div class=\"failed-validation\">Validation failed on one or more variables. On this page a common error is putting an IP address in \"DHCP Start\" instead of a simple number.</div>"
		echo "<div class=\"failed-validation\">$FAIL_MESSAGE</div>"
	fi
fi

awk -v "name=@TR<<Name>>" \
	-v "interface=@TR<<Interface>>" \
	-v "interfaces=@TR<<Interfaces>>" \
	-v "status=@TR<<Status>>" \
	-v "action=@TR<<Action>>" \
	-f /usr/lib/webif/common.awk -f - /etc/dnsmasq.options <<EOF
BEGIN{
	start_form("@TR<<Interfaces>>")
	print "<table style=\\"width: 90%\\">"
	print "<tr class=\"odd\"><th>" name "</th><th>" interface "</th><th>" interfaces "</th><th>" status "</th><th>" action "</th></tr>"
}
EOF

#lan_br_cfg=`uci get bridge.general.lan`
#wan_br_cfg=`uci get bridge.general.wan`
#wifi_br_cfg=`uci get bridge.general.wifi`
#brcount=`uci get bridge.general.count`  
#brindex=1
#while [ $brindex -le "$brcount" ]
#do
#  brname=`uci get bridge.general.brname$brindex`
#  brstatus=`uci get network.$brname.status`
#  [ "$brstatus" = "1" ] && append network_devices "$brname"
#  if [ "$lan_br_cfg" -eq 1 ];then
#    brlancfg=`uci get network.$brname.lan`
#    if [ "$brlancfg" -eq 1 ];then
#      [ "$brstatus" = "0" ] && lan_br_cfg="0"
#    fi
#  fi
#  if [ "$wan_br_cfg" -eq 1 ];then
#    brwancfg=`uci get network.$brname.wan`
#    if [ "$brwancfg" -eq 1 ];then
#      [ "$brstatus" = "0" ] && wan_br_cfg="0"
#    fi
#  fi
#  if [ "$wifi_br_cfg" -eq 1 ];then
#    brwificfg=`uci get network.$brname.wifi`
#    if [ "$brwificfg" -eq 1 ];then
#      [ "$brstatus" = "0" ] && wifi_br_cfg="0"
#    fi
#  fi
#  brindex=`expr $brindex + 1`
#done
lan_dhcp_cfg=1
wan_dhcp_cfg=1
wifi_dhcp_cfg=1
brnames=$(uci show network | grep "=interface"  | cut -d'.' -f 2 | cut -d'=' -f 1 | sed "s/loopback//g" | sed "s/lan//g" | sed "s/wan//g" | sed "/^$/d")
for brname in $brnames ;  do
#  brstatus=`uci get network.$brname.status`
#  [ "$brstatus" = "1" ] &&  { 
    append network_devices "$brname"
    lan_br_cfg=`uci get network.$brname.lan`
    [ "$lan_br_cfg" = 1 ] && lan_dhcp_cfg=0
    wan_br_cfg=`uci get network.$brname.wan`
    [ "$wan_br_cfg" = 1 ] && wan_dhcp_cfg=0
    wifi_br_cfg=`uci get network.$brname.wifi`
    [ "$wifi_br_cfg" = 1 ] && wifi_dhcp_cfg=0
#  }
done
equal "$lan_dhcp_cfg" 1 && append network_devices "lan"
equal "$wan_dhcp_cfg" 1 && append network_devices "wan"
equal "$wifi_dhcp_cfg" 1 && append network_devices "wifi"
	pppoa_ifname="atm0" # hack for ppp over atm, which has no ${proto}_ifname
	for ifname in $network_devices; do
		config_get type $ifname type
		if [ "$type" = "bridge" ]; then
			IFACE="br-$ifname"
			IFACES=$(uci get network.$ifname.ifname)
		else 
			IFACE="$ifname"
			config_get IFACES $ifname ifname
		fi
		echo "IFACES=$IFACES ifname=$ifname" >/test1.log
		if [ "$ifname" = "$FORM_iface" ]; then
			style="class=\"settings-title\""
		else
			style=""
		fi
		config_get name $ifname name
		if [ "$name" ]; then
			NAME="br-$name"
		else
			NAME="$ifname"
		fi
		config_get status $ifname enabled
		equal "$status" 1 && STATUS="Enabled" || STATUS="Disabled"
		config_get proto $ifname proto
		if [ "$ifname" = "wifi" ]; then
		#NAME="wifi"
		#IFACE="wifi"
		#IFACES=`uci get wireless.general.type`
		  proto="static"
		  for vap_id in $vap_list; do
		    config_get status $vap_id enabled
		    equal "$status" 1 && STATUS="Enabled" || STATUS="Disabled"
                    disable=`uci get ${vap_id}.${vap_id}.disabled`
                    if [ "$disable" -eq 0 ]; then
                      IFACES=`uci get ${vap_id}.${vap_id}.interface`
		      IFACE=$vap_id
                    else
                      IFACES=""
                      IFACE=""
                    fi
		    echo "<tr class=\"tr_bg\"><td $style>$vap_id</td><td $style>$IFACE</td><td $style>$IFACES</td><td>$STATUS</td><td $style align=\"center\"><a href=\"network-dhcpiface.sh?action=modify&amp;iface=$vap_id\">@TR<<<img title="edit" src="/images/edit.gif" alt="edit">>></a></td></tr>"
                  done
		else
		  if [ "$proto" = "static" ]; then
		    echo "<tr class=\"tr_bg\"><td $style>$NAME</td><td $style>$IFACE</td><td $style>$IFACES</td><td>$STATUS</td><td $style align=\"center\"><a href=\"network-dhcpiface.sh?action=modify&amp;iface=$ifname\">@TR<<<img title="edit" src="/images/edit.gif" alt="edit">>></a></td></tr>"
		  fi
                fi
	done

awk -f /usr/lib/webif/common.awk -f - /etc/dnsmasq.options <<EOF
BEGIN{
	print "</table><br />"
	end_form();
}
EOF

if [ -n "$FORM_iface" ]; then
	config_get ipaddr $FORM_iface ipaddr
	config_get netmask $FORM_iface netmask
	if [ "$FORM_iface" = "vap0" -o "$FORM_iface" = "vap1" -o "$FORM_iface" = "vap2" -o "$FORM_iface" = "vap3" -o "$FORM_iface" = "vap4" -o "$FORM_iface" = "vap5" -o "$FORM_iface" = "vap6" -o "$FORM_iface" = "vap7"  ]; then
	  ipaddr=`uci get ${FORM_iface}.${FORM_iface}.ipaddr`
	  netmask=`uci get ${FORM_iface}.${FORM_iface}.netmask`
	fi
	if [ -n "$ipaddr" ]; then
		config_get start $FORM_iface start
		config_get num $FORM_iface limit
		
		eval $(ipcalc.sh $ipaddr $netmask ${start:-100} ${num:-150})

#		# Static DHCP mappings (/etc/ethers)
#		awk -v "url=$SCRIPT_NAME" \
#			-v "mac=$FORM_dhcp_mac" \
#			-v "remove=@TR<<Remove>>" \
#			-v "add=@TR<<Add>>" \
#			-v "param=@TR<<Parameters>>" \
#			-v "value=@TR<<Value>>" \
#			-v "action=@TR<<Action>>" \
#			-v "macaddress=@TR<<MAC Address>>" \
#			-v "iface=$FORM_iface" \
#			-v "ip=$FORM_dhcp_ip" -f /usr/lib/webif/common.awk -f - $DNSMASQ_FILE <<EOF
#BEGIN {
#	FS=","
#	start_form("@TR<<Options For>> $FORM_iface")
#	print "<table style=\"width: 90%\"><tr><th>" param "</th><th>" value "</th><th>" action "</th></tr>"
#	print "<tr><td colspan=\"4\"><hr class=\"separator\" /></td></tr>"
#}
#
## only for type not empty
#{
#	n = split(\$1, value, "[=]")
#	option = value[2];
#}
#(\$1 ~ /^dhcp-option/ && option == iface) {
#	gsub(/#.*$/, "");
#	print "<tr><td>" \$2 "</td><td>"
#	# first = 1
#	for (i = 3; i <= NF; i++) {
#		print \$i "<br />"
#	}
#	print "</td><td><a href=\\"network-dhcpiface.sh?remove_line=1&amp;mod=del&amp;iface=" iface "&line=" \$0 "\\">" remove "</a></td></tr>"
#	print "<tr><td colspan=\\"3\\"><hr class=\\"separator\\" /></td></tr>"
#}
#
#END {
#	print ""
#}
#EOF
#		awk -v "url=$SCRIPT_NAME" \
#			-v "mac=$FORM_dhcp_mac" \
#			-v "remove=@TR<<Remove>>" \
#			-v "add=@TR<<Add>>" \
#			-v "param=@TR<<Parameters>>" \
#			-v "value=@TR<<Value>>" \
#			-v "action=@TR<<Action>>" \
#			-v "macaddress=@TR<<MAC Address>>" \
#			-v "iface=$FORM_iface" \
#			-v "ip=$FORM_dhcp_ip" -f /usr/lib/webif/common.awk -f - /etc/dnsmasq.options <<EOF
#BEGIN {
#	FS=":"
#	print "<tr><td><select id=\\"hop\\" name=\\"hop\\">"
#}
#
## only for type not empty
#(\$3 != "") {
#	gsub(/#.*$/, "");
#	print "<option value=\\"@TR<<" \$1 "\>>\">" \$1 " - " \$2 " - (" \$3 ")</option>"
#}
#
#END {
#	print "</select></td><td><input type=\\"text\\" name=\\"values\\" value=\\"" values "\\" /></td>"
#	print "<td><input type=\\"hidden\\" value=\\"" iface "\\" name=\\"iface\\" /><input type=\\"submit\\" value=\\"" add "\\" name=\\"add_line\\" /></td></tr></table>"
#	end_form();
#}
#EOF
#

#NET=`echo $NETWORK | cut -d "." -f 1-3`
NET=`echo $ipaddr | cut -d "." -f 1-3`
display_form<<EOF
start_form|@TR<<DHCP Server For $FORM_iface>>
field|@TR<<Interface>>|iface_field|hidden
text|iface|$FORM_iface
field|@TR<<DHCP Service>>|dhcp_enabled_field
select|dhcp_enabled|$FORM_dhcp_enabled
option|0|@TR<<Disabled>>
option|1|@TR<<Enabled>>
field|@TR<<DHCP Start>>|dhcp_start_field
string|$NET.
text|dhcp_start|$FORM_dhcp_start
field|@TR<<DHCP Num>>|dhcp_num_field
text|dhcp_num|$FORM_dhcp_num
field|@TR<<DHCP Lease Minutes>>
text|dhcp_lease|$FORM_dhcp_lease
end_form
submit|save|@TR<<Save>>
EOF
fi
fi

footer ?>
<!--
##WEBIF:name:Network:425:DHCP
-->
