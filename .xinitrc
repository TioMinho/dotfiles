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
randomizeBG &
picom &
dunst &
dwmblocks &
gammastep &

# Starts window manager
exec dwm
