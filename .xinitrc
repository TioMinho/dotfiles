#!/bin/sh
#
# ~/.xinitrc
# Custom configurations executed by startx (used here
#   for initializing the window manager)
#
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Wallpaper
feh --bg-scale ~/Pictures/wallpapers/01.png &

# Statusbar loop (quick&dirty before doing a shell script)
while true; do
    xsetroot -name "$(cat /sys/class/power_supply/BAT1/capacity)|$(date +"%F %R")"
    sleep 1m
done &

# Compositor
picom &

# Starts window manager (current: i3)
exec dwm
