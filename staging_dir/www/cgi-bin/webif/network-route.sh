#!/usr/bin/webif-page
<?
. /usr/lib/webif/webif.sh
uci_load "route"

! empty "$FORM_delete" && {
	uci_set route route$FORM_delete delete "1"
#	routecount=`uci get route.general.routes_count`
#	routeid=$FORM_delete
#	uci_set route route$routeid delete "1"
#	uci_remove route route$routeid
#	while [ $routeid -le $routecount ]
#	do
#	uci_rename route route`expr $routeid + 1` route$routeid
#	routeid=`expr $routeid + 1`
#	done
#	uci_set route general routes_count `expr $routecount - 1`
}

! empty "$FORM_new_route" && {
        SAVED=1
validate <<EOF
hostname|FORM_name|@TR<<Route Name>>|required|$FORM_name
ip|FORM_destip|@TR<<Dest. IP>>|required|$FORM_destip
ip|FORM_netmask|@TR<<Netmask>>|required|$FORM_netmask
ip|FORM_gateway|@TR<<Gateway>>|required|$FORM_gateway
EOF
        equal "$?" 0 && {
        routeid=`uci get route.general.routes_count`
        routeid=`expr $routeid + 1`
	uci_add route route route$routeid
	uci_set route route$routeid new "1"
	uci_set route route$routeid edit "0"
	uci_set route route$routeid delete "0"
	uci_set route route$routeid name "$FORM_name"
	uci_set route route$routeid dest_ip "$FORM_destip"
	uci_set route route$routeid netmask "$FORM_netmask"
	uci_set route route$routeid gateway "$FORM_gateway"
	uci_set route general routes_count "$routeid"
	}
}

! empty "$FORM_save_route" && {
        SAVED=1
validate <<EOF
ip|FORM_destip|@TR<<Dest. IP>>|required|$FORM_destip
ip|FORM_netmask|@TR<<Netmask>>|required|$FORM_netmask
ip|FORM_gateway|@TR<<Gateway>>|required|$FORM_gateway
EOF
        equal "$?" 0 && {
        routeid=$FORM_routeid
	uci_set route route$routeid edit "1"
	uci_set route route$routeid new "0"
	uci_set route route$routeid delete "0"
	uci_set route route$routeid name "$FORM_name"
        olddst=`uci get route.route$routeid.dest_ip`
	uci_set route route$routeid dest_ip_old "$olddst"
        oldnetmask=`uci get route.route$routeid.netmask`
	uci_set route route$routeid netmask_old "$oldnetmask"
        oldgateway=`uci get route.route$routeid.gateway`
	uci_set route route$routeid gateway_old "$oldgateway"

	uci_set route route$routeid dest_ip "$FORM_destip"
	uci_set route route$routeid netmask "$FORM_netmask"
	uci_set route route$routeid gateway "$FORM_gateway"
#	uci_set route general routes_count "$routeid"
	}
}

#####################################################################
header "Network" "Route" "@TR<<Route Tables>>" ''
#####################################################################

?>
<div class="settings">
<?
parse_target() {
        equal "$1" "" && return
        equal "$2" "" && return

        echo "$1" | awk -v "heading=$2" '
        BEGIN {
                print "         <th colspan=\"11\" style=\"font-size: 1.25em;\" ><h3><strong>" heading "</strong></h3></th>"
                print "<div class=\"settings-content-inner\">"
                print "<table style=\"width: 96%; text-align: left; font-size: 0.8em;\" border=\"0\" cellpadding=\"3\" cellspacing=\"3\" align=\"center\"> <tbody>"
                print " </tr>"
                rulecntr=-1
        }
        function blankline()
        {
                print " <tr>"
                print "         <td colspan=\"11\"><br /></td>"
                print " </tr>"
        }
        /^(#.*)?$/ {next}
        $1 == "Destination" {
                print " <tr class=\"odd\">"
                for (i=1; i<=8; i++)
                        printf "%s%s%s%s%s\n", "                <th>@TR<<status_iptables_col_", $i, "#", $i, ">></th>"
	                print " </tr>"
	                rulecntr=0
#	                odd=1
        }
        $1 ~ /[[:digit:]]{1,4}/ {
#                if (odd == 1) {
                        print " <tr class=\"tr_bg\">"
#                        odd--
#                } else {
#                        print " <tr class=\"odd\">"
#                        odd++
#                }
                print "         <td>" $1 "</td>"
                print "         <td>" $2 "</td>"
                print "         <td>" $3 "</td>"
                print "         <td>" $4 "</td>"
                print "         <td>" $5 "</td>"
                print "         <td>" $6 "</td>"
                print "         <td>" $7 "</td>"
                print "         <td>" $8 "</td>"
                print " </tr>"
                rulecntr++
        }
        END {
                blankline()
        }'
}

parse_target "$(route -n 2>/dev/null)" "@TR<<Route Table:>>"
?>
</tbody>
</table>
</div>
<div class="clearfix">&nbsp;</div></div>
<br />

<?
count=`uci get route.general.routes_count`

echo "<div class=\"settings\">"
echo "<th colspan=\"11\"><h3><strong>" Static Routes: "</strong></h3></th>"
echo "<div class=\"settings-content-inner\">"
echo "<table style=\"width: 96%; text-align: left; font-size: 0.8em;\" border=\"0\" cellpadding=\"3\" cellspacing=\"3\" align=\"center\"><tbody>"
echo "<tr class=\"odd\"><th>Route Name</th><th>Dest. IP</th><th>Netmask</th><th>Gateway</th></th><th style=\"text-align: center;\">Actions</th></tr>"
if [ "$count" = 0 ]; then
  echo "<tr class=\"tr_bg\"><td colspan=\"6\">There are no static routes</td></tr>"
fi
i=1
while [ "$i" -le "$count" ]
do
delete=`uci get route.route$i.delete`
name=`uci get route.route$i.name`
destip=`uci get route.route$i.dest_ip`
netmask=`uci get route.route$i.netmask`
gateway=`uci get route.route$i.gateway`
if [ "$delete" != 1 ]; then
#echo "<tr><td>$name</td><td>$destip</td><td>$netmask</td><td>$gateway</td><td style=\"text-align: center;\"><a href=\"$SCRIPT_NAME?display_route=$i\"><img alt=\"@TR<<edit>>\" src=\"/images/edit.gif\" title=\"@TR<<edit>>\" /></a>  <a href=\"$SCRIPT_NAME?delete=$i\"><img alt=\"@TR<<delete>>\" src=\"/images/x.gif\" title=\"@TR<<delete>>\" /></a></td></tr>"
echo "<tr class=\"tr_bg\"><td>$name</td><td>$destip</td><td>$netmask</td><td>$gateway</td><td style=\"text-align: center;\"><a href=\"$SCRIPT_NAME?display_route=$i\"><img alt=\"@TR<<edit>>\" src=\"/images/edit.gif\" title=\"@TR<<edit>>\" /></a>  <a href=\"$SCRIPT_NAME?delete=$i\"><img alt=\"@TR<<delete>>\" src=\"/images/x.gif\" title=\"@TR<<delete>>\" /></a></td></tr>"
fi
i=`expr $i + 1`
done
echo "</tbody></table></div><div class=\"clearfix\">&nbsp;</div></div><br>"

empty "$FORM_display_route" && {
display_form <<EOF
onchange|modechange
start_form|@TR<<New Route>>
formtag_begin|new_route|$SCRIPT_NAME
field|@TR<<Route Name>>|name
text|name|$FORM_name
field|@TR<<Dest. IP>>|destip
text|destip|$FORM_destip
field|@TR<<Netmask>>|netmask
text|netmask|$FORM_netmask
field|@TR<<Gateway>>|gateway
text|gateway|$FORM_gateway
field||spacer1
string|<br />
submit|new_route|@TR<<Add>>
reset||@TR<<Clear>>
formtag_end
end_form
EOF
}

! empty "$FORM_display_route" && {
  routeid=$FORM_display_route
  FORM_name=`uci get route.route$routeid.name`
  FORM_destip=`uci get route.route$routeid.dest_ip`
  FORM_netmask=`uci get route.route$routeid.netmask`
  FORM_gateway=`uci get route.route$routeid.gateway`

  display_form <<EOF
  onchange|modechange
  start_form|@TR<<Edit Route $routename>>
  formtag_begin|save_route|$SCRIPT_NAME
  field|@TR<<Route ID>>
  text|routeid|$FORM_display_route|||readonly
  field|@TR<<Route Name>>|name
  text|name|$FORM_name
  field|@TR<<Dest. IP>>|destip
  text|destip|$FORM_destip
  field|@TR<<Netmask>>|netmask
  text|netmask|$FORM_netmask
  field|@TR<<Gateway>>|gateway
  text|gateway|$FORM_gateway
  field||spacer1
  string|<br />
  submit|save_route|@TR<<Save>>
  reset||@TR<<Clear>>
  formtag_end
  end_form
EOF
}
footer ?>

<!--
##WEBIF:name:Network:570:Route
-->
