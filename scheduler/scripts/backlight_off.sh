#!/bin/bash

export PATH="$PATH:/opt/vc/bin/"
export LD_LIBRARY_PATH="/opt/vc/lib/"

output=$(tvservice -s)

if [[ $output =~ "0x400000 [LCD]" ]]; then
  echo -n 1 > /sys/class/backlight/rpi_backlight/bl_power
else
  echo standby 0 | cec-client -d 1 -s
fi
