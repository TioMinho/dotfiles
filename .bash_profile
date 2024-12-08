#
# ~/.bash_profile
# Configuration file. Sourced by interactive login shells
# I'm using it to `startx' on login (tty)

# Sources .bashrc (configuration for regular shells)
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Environment variables
export PATH=$PATH:$HOME/.local/bin:/opt/nvim-linux64/bin:$HOME/.juliaup/bin
export LIBVA_DRIVER_PATH=/usr/lib/dri/
export LIBVA_DRIVER_NAME=iHD
export VDPAU_DRIVER=va_gl

# Autostart X on login (if tty1)
if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  startx -- -keeptty >~/.xorg.log 2>&1
fi
