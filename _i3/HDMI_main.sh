#!/bin/sh

#Determinaremos qué monitores están conectados.
xrandr | grep -o "HDMI1 connected" 2>&1 >/dev/null
if [ $? == 0 ]; then
  #si está conetado el monitor HDMI, lo ocupamos como display principal. :)
  xrandr --output HDMI1 --auto --primary --above eDP1 --output eDP1 --auto
  feh --bg-scale ~/.i3/background.jpg
fi

xrandr | grep -o "HDMI1 connected" 2>&1 >/dev/null
if [ $? == 1 ]; then
  xrandr --output eDP1 --auto --primary --output HDMI1 --off
  feh --bg-scale ~/.i3/background.jpg
fi
