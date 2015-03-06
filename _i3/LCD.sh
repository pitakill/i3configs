#!/bin/sh

ACTUAL=`grep '^[0-9].' /sys/class/backlight/intel_backlight/brightness`

MAX=`grep '^[0-9].' /sys/class/backlight/intel_backlight/max_brightness`

echo $ACTUAL*100/$MAX | bc
