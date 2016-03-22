#!/bin/sh

echo -n "Your laptop battery has "

p="$(find /sys/devices -name "*BAT0")"; full="$(cat "$p"/energy_full)"; design="$(cat "$p"/energy_full_design)"; l="$(echo "$full / $design * 100" | bc -q -l | cut -b -5)"; echo -n "$l"

echo -n "% of its factory design capacity level. "
echo "Have a nice day."



