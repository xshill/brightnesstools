#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Usage: setbrightness brightness_level"
	exit 1
fi

re="^[0-9]+$"

if [[ $1 =~ $re ]]; then
	echo $1 | sudo tee /sys/class/backlight/intel_backlight/brightness
else
	echo "brightness_level must be a number"
	exit 1
fi
