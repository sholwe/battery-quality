#!/bin/sh

echo -n "Your laptop battery has "

p="$(find /sys/devices -name "*BAT0")"; full="$(cat "$p"/charge_full)"; design="$(cat "$p"/charge_full_design)"; l="$(echo "$full / $design * 100" | bc -q -l | cut -b -5)"; echo -n "$l"

echo -n "% of its factory design capacity level. "
echo "Have a nice day."



