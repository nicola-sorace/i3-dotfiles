#!/bin/bash

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:30:00 ]] ; then
	/usr/bin/notify-send -u critical "Low Battery" "$BATTINFO"
fi

if [[ `echo $BATTINFO | grep Charging` && `echo $BATTINFO | cut -f 4 -d " "` > 95% ]] ; then
	/usr/bin/notify-send "Battery Charged" "$(echo $BATTINFO | cut -f2-20 -d" " )"
fi

exit 0
