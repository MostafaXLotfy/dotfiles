#!/bin/sh
wal -i "$(ls -lh ~/.cache/wallpaper | sed 's/.*-> //')" &
~/personal/scripts/bar.sh &
sxhkd &
dunst &
picom &
exec /bin/bspwm
