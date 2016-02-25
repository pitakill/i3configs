#!/bin/sh

horizontal=`ls ~/.i3/backgrounds/1920x1080/* | shuf -n 1`
vertical=`ls ~/.i3/backgrounds/1080x1920/* | shuf -n 1`

 feh --bg-scale $horizontal --bg-scale $vertical
