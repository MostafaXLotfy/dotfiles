#!/bin/sh
wal -i "$(ls -lh ~/.cache/wallpaper | sed 's/.*-> //')"
dwmblocks &
xcompmgr &
sxhkd &
xinput set-prop 11 "Device Enabled" 0 &
#.~/dwm-bar/dwm_bar.sh &
#xset r rate 350 50 &	# Speed xrate up
sudo mount /dev/sda3 /mnt/windows &
exec /usr/local/bin/dwm
