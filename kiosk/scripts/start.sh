#!/bin/bash
#if [ "1" -eq "1" ]
#then
(crontab -l; echo "${BACKLIGHT_ON:-0 8 * * *} /usr/src/backlight_on.sh") | crontab -
(crontab -l; echo "${BACKLIGHT_OFF:-20 15 * * *} /usr/src/backlight_off.sh") | crontab -
#fi

crond -f
