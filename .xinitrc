#!/bin/sh
#
# ~/.xinitrc
# Custom configurations executed by startx (used here
#   for initializing the window manager)
#
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

case $1 in
dwm)
  # Background processes (wallpaper, compositor, notification daemon, statusbar, ...)
  randomizeBG &
  picom &
  dunst &
  dwmblocks &
  gammastep &

  # Starts window manager
  exec dwm
  ;;

steam)
  # Pre-configurations
  bluetoothctl connect 24:09:12:B3:86:40 &
  xrandr --output HDMI2 --auto &

  # Starts window manager
  exec cage -s -m last -- /usr/bin/steam -tenfoot
  ;;

esac
