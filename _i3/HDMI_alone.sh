#!/bin/sh

# Comprobamos que el HDMI esté funcionando.
xrandr | grep -o "HDMI1 connected" 2>&1 >/dev/null
if [ $? == 0 ]; then
  xrandr --output HDMI1 --primary --output eDP1 --off
fi
