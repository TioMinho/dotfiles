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

# Background processes (wallpaper, compositor, notification daemon, statusbar, ...)
feh --bg-scale ~/Pictures/wallpapers/01.png &
picom &
dunst &
dwmblocks &
gammastep &

wmname LG3D &   # This is an ugly workaround to make lame Java apps (like MATLAB) 
                # to work properly. Long-term solution is to stop using MATLAB

# Starts window manager
exec dwm
