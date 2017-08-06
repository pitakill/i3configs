#!/bin/sh

benq="HDMI1"
samsung="HDMI3"
samsung2="HDMI2"

#Determinaremos qué monitores están conectados.
xrandr | grep -o "HDMI1 disconnected" 2>&1 >/dev/null
if [ $? == 0 ]; then
  #si está conetado el monitor HDMI, lo ocupamos como display samsung. :)
  #xrandr --output $samsung --auto --primary --output $benq --right-of $samsung --rotate left
  xrandr --output $samsung --auto --primary --output $samsung2 --left-of $samsung --output $benq --off
  #feh --bg-fill --randomize --recursive ~/.i3/backgrounds/*
  #nitrogen --restore &
  ~/.i3/background.sh &
fi

#xrandr | grep -o "HDMI1 connected" 2>&1 >/dev/null
#if [ $? == 1 ]; then
  #xrandr --output eDP1 --auto --primary --output HDMI1 --off
  #feh --bg-scale ~/.i3/background.jpg
#fi
