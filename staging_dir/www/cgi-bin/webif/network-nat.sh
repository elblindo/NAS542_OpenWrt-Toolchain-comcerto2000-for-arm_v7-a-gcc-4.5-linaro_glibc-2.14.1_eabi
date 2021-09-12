#!/usr/bin/webif-page
<?
. /usr/lib/webif/webif.sh

! empty "$FORM_clear" && {
FORM_service=""
#FORM_wan=""
FORM_wanip=""
FORM_localip=""
}

! empty "$FORM_new_rule" && {
	SAVED=1
#	case $FORM_wan in
#	0) wan_req="required" ;;
#	1) FORM_wanip="0.0.0.0" ;;
#	esac
validate << EOF
ip|FORM_wanip|@TR<<WAN IP>>|required|$FORM_wanip
ip|FORM_localip|@TR<<LOCAL IP>>|required|$FORM_localip
EOF
	equal "$?" 0 && {
	NextRulePos=`uci get nat.general.NextRulePos`
	ruleid=`uci get nat.general.rules_count`
	ruleid=`expr $ruleid + 1`
	uci_add nat nat rule$ruleid
	uci_set nat rule$ruleid StatusEnable "1" 
        uci_set nat rule$ruleid CurPos "$NextRulePos" 
	uci_set nat rule$ruleid service "$FORM_service"
#	uci_set nat rule$ruleid wan "$FORM_wan"
	uci_set nat rule$ruleid wan_ip "$FORM_wanip"
	uci_set nat rule$ruleid local_ip "$FORM_localip"
	uci_set nat general rules_count "$ruleid"

	ruleid=`uci get nat_new.general_new.rules_count`
	ruleid=`expr $ruleid + 1`
	uci_add nat_new nat rule_new$ruleid
	uci_set nat_new rule_new$ruleid new_rule "1"
	uci_set nat_new rule_new$ruleid insert_rule "0"
	uci_set nat_new rule_new$ruleid edit_rule "0"
	uci_set nat_new rule_new$ruleid delete_rule "0"
	uci_set nat_new rule_new$ruleid CurPos "$NextRulePos"
	uci_set nat_new rule_new$ruleid service "$FORM_service"
#	uci_set nat_new rule_new$ruleid wan "$FORM_wan"
	uci_set nat_new rule_new$ruleid wan_ip "$FORM_wanip"
	uci_set nat_new rule_new$ruleid local_ip "$FORM_localip"
	uci_set nat_new general_new rules_count "$ruleid"

	NextRulePos=`expr $NextRulePos + 1`
	uci_set nat general NextRulePos "$NextRulePos"
	}
}

! empty "$FORM_display_rule" && {
	ruleid=$FORM_display_rule
	FORM_status_enable=${type:-$(uci get nat.rule$ruleid.StatusEnable)}
	FORM_service=${service:-$(uci get nat.rule$ruleid.service)}
#	FORM_wan=${wan:-$(uci get nat.rule$ruleid.wan)}
	FORM_wanip=${wanip:-$(uci get nat.rule$ruleid.wan_ip)}
	FORM_localip=${localip:-$(uci get nat.rule$ruleid.local_ip)}
}

! empty "$FORM_apply_nat_policy" && {
    
   count=`uci get nat.general.rules_count`
   i=1
   while [ $i -le "$count" ]
   do
     eval checkboxvar="\$FORM_pol_status_$i"
     if [ -n "$checkboxvar" ] ; then
      oldstatus=`uci get nat."rule$i".StatusEnable` 
      if [ "$oldstatus" = "0" ] ; then
        uci_set nat "rule$i" StatusEnable "1"

#        type=`uci get nat.rule$i.type`
        service=`uci get nat.rule$i.service`
#        wan=`uci get nat.rule$i.wan`
        wanip=`uci get nat.rule$i.wan_ip`
#        local=`uci get nat.rule$i.local`
        localip=`uci get nat.rule$i.local_ip`
#        time=`uci get nat.rule$i.time`
#        target=`uci get nat.rule$i.target`
        CurPos=`uci get nat.rule$i.CurPos`

        ruleid=`uci get nat_new.general_new.rules_count`
        ruleid=`expr $ruleid + 1`
	uci_add nat_new nat rule_new$ruleid
	uci_set nat_new rule_new$ruleid insert_rule "1"
	uci_set nat_new rule_new$ruleid new_rule "0"
	uci_set nat_new rule_new$ruleid edit_rule "0"
	uci_set nat_new rule_new$ruleid delete_rule "0"
#	uci_set nat_new rule_new$ruleid type "$type"
	uci_set nat_new rule_new$ruleid service "$service"
#	uci_set nat_new rule_new$ruleid wan "$wan"
	uci_set nat_new rule_new$ruleid wan_ip "$wanip"
#	uci_set nat_new rule_new$ruleid local "$local"
	uci_set nat_new rule_new$ruleid local_ip "$localip"
#	uci_set nat_new rule_new$ruleid time "$time"
#	uci_set nat_new rule_new$ruleid target "$target"
	uci_set nat_new rule_new$ruleid CurPos "$CurPos"
	uci_set nat_new general_new rules_count "$ruleid"
########### Increment Current Position by 1 in all next rules and NextRulePos by 1 #######
        ruleid=`expr $i + 1`
        while [ $ruleid -le $count ]
        do
          CurPos=`uci get nat.rule$ruleid.CurPos`
          uci_set nat rule$ruleid CurPos `expr $CurPos + 1`
          ruleid=`expr $ruleid + 1`
        done
        NextRulePos=`uci get nat.general.NextRulePos`
        NextRulePos=`expr $NextRulePos + 1`
	uci_set nat general NextRulePos "$NextRulePos"
      fi
     else
      oldstatus=`uci get nat."rule$i".StatusEnable` 
      if [ "$oldstatus" = "1" ] ; then
        uci_set nat "rule$i" StatusEnable "0"
        CurPos=`uci get nat.rule$i.CurPos`

        ruleid=`uci get nat_new.general_new.rules_count`
        ruleid=`expr $ruleid + 1`
	uci_add nat_new nat rule_new$ruleid
	uci_set nat_new rule_new$ruleid delete_rule "1"
	uci_set nat_new rule_new$ruleid new_rule "0"
	uci_set nat_new rule_new$ruleid insert_rule "0"
	uci_set nat_new rule_new$ruleid edit_rule "0"
	uci_set nat_new rule_new$ruleid CurPos "$CurPos"
	uci_set nat_new general_new rules_count "$ruleid"
########### Decrement Current Position by 1 in all next rules and NextRulePos by 1 #######
        ruleid=`expr $i + 1`
        while [ $ruleid -le $count ]
        do
          CurPos=`uci get nat.rule$ruleid.CurPos`
          uci_set nat rule$ruleid CurPos `expr $CurPos - 1`
          ruleid=`expr $ruleid + 1`
        done
        NextRulePos=`uci get nat.general.NextRulePos`
        NextRulePos=`expr $NextRulePos - 1`
	uci_set nat general NextRulePos "$NextRulePos"
      fi
     fi
     i=`expr $i + 1`
   done
}

! empty "$FORM_save_rule" && {
        SAVED=1
#	case $FORM_wan in
#	0) wan_req="required";;
#	1) FORM_wanip="0.0.0.0";;
#	esac
save_validate_success="n"
validate <<EOF
ip|FORM_wanip|@TR<<WAN IP>>|required|$FORM_wanip
ip|FORM_localip|@TR<<Local IP>>|required|$FORM_localip
EOF
	equal "$?" 0 && {
	status=`uci get nat.rule$FORM_ruleid.StatusEnable`
	uci_set nat rule$FORM_ruleid service "$FORM_service"
#	uci_set nat rule$FORM_ruleid wan "$FORM_wan"
	uci_set nat rule$FORM_ruleid wan_ip "$FORM_wanip"
	uci_set nat rule$FORM_ruleid local_ip "$FORM_localip"
        if [ "$status" = "1" ] ; then
	  ruleid=`uci get nat_new.general_new.rules_count`
	  ruleid=`expr $ruleid + 1`
          CurPos=`uci get nat.rule$FORM_ruleid.CurPos`
	  uci_add nat_new nat rule_new$ruleid
	  uci_set nat_new rule_new$ruleid edit_rule "1"
	  uci_set nat_new rule_new$ruleid new_rule "0"
	  uci_set nat_new rule_new$ruleid insert_rule "0"
	  uci_set nat_new rule_new$ruleid delete_rule "0"
	  uci_set nat_new rule_new$ruleid CurPos "$CurPos"
	  uci_set nat_new rule_new$ruleid service "$FORM_service"
#	  uci_set nat_new rule_new$ruleid wan "$FORM_wan"
	  uci_set nat_new rule_new$ruleid wan_ip "$FORM_wanip"
	  uci_set nat_new rule_new$ruleid local_ip "$FORM_localip"
	  uci_set nat_new general_new rules_count "$ruleid"
        fi
	save_validate_success="y"
	}
	[ "$save_validate_success" = "n" ] && FORM_display_rule=$FORM_ruleid
}

! empty "$FORM_delete" && {
	rulecount=`uci get nat.general.rules_count`
	ruleid=$FORM_delete
        status=`uci get nat.rule$ruleid.StatusEnable`
        DelRuleCurPos=`uci get nat.rule$ruleid.CurPos`
	uci_remove nat rule$ruleid
	while [ $ruleid -lt $rulecount ]
	do
	uci_rename nat rule`expr $ruleid + 1` rule$ruleid
	ruleid=`expr $ruleid + 1`
	done
        rulecount=`expr $rulecount - 1`
	uci_set nat general rules_count "$rulecount"
        if [ "$status" = "1" ] ; then
          NextRulePos=`uci get nat.general.NextRulePos`
          NextRulePos=`expr $NextRulePos - 1`
	  uci_set nat general NextRulePos "$NextRulePos"

	  ruleid=$FORM_delete
          while [ $ruleid -le $rulecount ]
          do
            CurPos=`uci get nat.rule$ruleid.CurPos`
            uci_set nat rule$ruleid CurPos `expr $CurPos - 1`
            ruleid=`expr $ruleid + 1`
          done
	  ruleid=`uci get nat_new.general_new.rules_count`
  	  ruleid=`expr $ruleid + 1`
	  uci_add nat_new nat rule_new$ruleid
	  uci_set nat_new rule_new$ruleid delete_rule "1"
	  uci_set nat_new rule_new$ruleid new_rule "0"
	  uci_set nat_new rule_new$ruleid insert_rule "0"
	  uci_set nat_new rule_new$ruleid edit_rule "0"
	  uci_set nat_new rule_new$ruleid CurPos "$DelRuleCurPos"
	  uci_set nat_new general_new rules_count "$ruleid"
	fi
}

! empty "$FORM_enable" && {
	uci_set nat general nat enable
        natstatus=`uci get nat_new.general_new.nat`
        if [ "$natstatus" = "enable" -o "$natstatus" = "disable" ] ; then
	  uci_set nat_new general_new nat ''
	else
	  uci_set nat_new general_new nat enable
	fi
}

! empty "$FORM_disable" && {
	uci_set nat general nat disable
        natstatus=`uci get nat_new.general_new.nat`
        if [ "$natstatus" = "enable" -o "$natstatus" = "disable" ] ; then
	  uci_set nat_new general_new nat ''
	else
	  uci_set nat_new general_new nat disable
	fi
}

#####################################################################
header "Network" "Nat-Rules" "@TR<<Nat Rules>>" ''
#####################################################################
cat <<EOF
<script type="text/javascript" src="/webif.js "></script>
<script type="text/javascript">
<!--
function modechange()
{
/*	var v;

	v = isset('wan', '0');
	set_visible('wanip', v);

	hide('save');
	show('save');*/
}
-->
</script>
EOF

servicecount=`uci get firewall.general.service_count`
i=1
while [ $i -le $servicecount ]
do
name=`uci get firewall.service$i.name`
protocol=`uci get firewall.service$i.protocol`
if [ "$protocol" != "ip" ]; then
services="$services
option|service$i|$name"
fi
i=`expr $i + 1`
done

nat=`uci get nat.general.nat`

echo "<form name=\"apply_nat_policy\" action=\"/cgi-bin/webif/network-nat.sh\" enctype=\"multipart/form-data\" method=\"post\">"
echo "<div class=\"settings\">"
echo "<th colspan=\"11\"><h3><strong>" Outbound Rules: "</strong></h3></th>"
echo "<div class=\"settings-content\">"
echo "<table style=\"width: 26%; text-align: left; font-size: 1em;\" border=\"0\" cellpadding=\"3\" cellspacing=\"3\" align=\"center\"><tbody>"
case $nat in
disable) echo "<tr><td>NAT Disabled</td><td style=\"text-align: center;\"><a href=\"$SCRIPT_NAME?enable=$i\"><img alt=\"@TR<<enable>>\" src=\"/images/enable.jpg\" title=\"@TR<<enable>>\" /></a></td></tr>";;
enable) echo "<tr><td>NAT Enabled</td><td style=\"text-align: center;\"><a href=\"$SCRIPT_NAME?disable=$i\"><img alt=\"@TR<<disable>>\" src=\"/images/disable.jpg\" title=\"@TR<<disable>>\" /></a></td></tr>";;
esac
echo "</tbody></table></div><div class=\"clearfix\">&nbsp;</div></div><br>"

count=`uci get nat.general.rules_count`

echo "<div class=\"settings\">"
echo "<th colspan=\"11\"><h3><strong>" Inbound Rules: "</strong></h3></th>"
echo "<div class=\"settings-content-inner\">"
echo "<table style=\"width: 96%; text-align: left; font-size: 0.8em;\" border=\"0\" cellpadding=\"3\" cellspacing=\"3\" align=\"center\"><tbody>"
echo "<tr class=\"odd\"><th>Service</th><th>WAN IP</th><th>Local IP</th></th><th style=\"text-align: center;\">Status</th><th style=\"text-align: center;\">Actions</th></tr>"
if [ "$count" = "0" ]; then
  echo "<tr class=\"tr_bg\"><td colspan=\"5\">There are no NAT inbound rules</td></tr>"
fi
i=1
while [ $i -le $count ]
do
  service=`uci get nat.rule$i.service`
  equal "$service" "any" && servicename=any || servicename=`uci get firewall.$service.name`
  #servicename=`uci get firewall.$service.name`
  wanip=`uci get nat.rule$i.wan_ip`
  localip=`uci get nat.rule$i.local_ip`
  PolStatus=`uci get nat.rule$i.StatusEnable`
  if [ "$PolStatus" = "1" ] ; then
    status="yes"
  else
    status=""
  fi
  echo "<tr class=\"tr_bg\"><td>$servicename</td><td>$wanip</td><td>$localip</td><td style=\"text-align: center;\"><input id="pol_status_yes_$i" type="checkbox" name="pol_status_$i" value="$status" checked=""  /><td style=\"text-align: center;\"><a href=\"$SCRIPT_NAME?display_rule=$i\"><img alt=\"@TR<<edit>>\" src=\"/images/edit.gif\" title=\"@TR<<edit>>\" /></a>  <a href=\"$SCRIPT_NAME?delete=$i\"><img alt=\"@TR<<delete>>\" src=\"/images/x.gif\" title=\"@TR<<delete>>\" /></a></td></tr>"
i=`expr $i + 1`
done
echo "<tr id=\"spacer1\"><td colspan=\"2\"><br><input name=\"apply_nat_policy\" value=\"Save\" type=\"submit\"></td></tr>"
echo "</tbody></table></div><div class=\"clearfix\">&nbsp;</div></div></form><br>"

empty "$FORM_display_rule" && {
display_form <<EOF
#onchange|modechange
start_form|@TR<<New Rule>>
formtag_begin|new_rule|$SCRIPT_NAME
field|@TR<<Type>>
string|@TR<<Inbound>>
field|@TR<<Service>>
select|service|$FORM_service
option|any|@TR<<Any>>
$services
#field|@TR<<WAN IP>>
#select|wan|$FORM_wan
#option|1|@TR<<Any>>
#option|0|@TR<<Specify>>
field|@TR<<WAN IP Address>>|wanip
text|wanip|$FORM_wanip
field|@TR<<Local IP>>
text|localip|$FORM_localip
helpitem|Services List
helptext|List of services selected from the Firewall->Services list and those services protocol is not ip.
field||spacer1
string|<br />
submit|new_rule|@TR<<Add>>
submit|clear|@TR<<Clear>>
formtag_end
end_form
EOF
}

! empty "$FORM_display_rule" && {
display_form <<EOF
#onchange|modechange
start_form|@TR<<Edit Rule $FORM_display_rule>>
formtag_begin|save_rule|$SCRIPT_NAME
field|@TR<<Rule ID>>
text|ruleid|$FORM_display_rule|||readonly
field|@TR<<Type>>
string|@TR<<Inbound>>
field|@TR<<Service>>
select|service|$FORM_service
option|any|@TR<<Any>>
$services
#field|@TR<<WAN IP>>
#select|wan|$FORM_wan
#option|1|@TR<<Any>>
#option|0|@TR<<Specify>>
field|@TR<<WAN IP Address>>|wanip
text|wanip|$FORM_wanip
field|@TR<<Local IP>>
text|localip|$FORM_localip
helpitem|Services List
helptext|List of services will be taken from Security->Services list.
field||spacer1
string|<br />
submit|save_rule|@TR<<Save>>
reset||@TR<<Reset>>
formtag_end
end_form
EOF
}

footer ?>

<!--
##WEBIF:name:Network:560:Nat-Rules
-->
