#!/bin/sh

principal="HDMI1"
secundario="HDMI3"

# Comprobamos que el HDMI esté funcionando.
xrandr | grep -o "HDMI1 connected" 2>&1 >/dev/null
if [ $? == 0 ]; then
  xrandr --output $principal --primary --output $secundario --off
fi
