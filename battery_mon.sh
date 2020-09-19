#!/bin/sh

interval=10

while true
do
    upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '{if ($1 == "percentage:") {print $2 }}' >> $1
	sleep ${interval}
done

