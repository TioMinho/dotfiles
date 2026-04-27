#
# ~/.bash_profile
# Configuration file. Sourced by interactive login shells
# I'm using it to `startx' on login (tty)

# Sources .bashrc (configuration for regular shells)
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Environment variables
export PATH=$PATH:$HOME/.local/bin:/opt/nvim-linux64/bin:$HOME/.juliaup/bin

# XDG DIRECTORIES
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS=/usr/local/share:/usr/share

# HARDWARE VIDEO ACCELERATION
export CUDA_DISABLE_PERF_BOOST=1
export ANV_DEBUG=video-decode,video-encode

# Autostart X on login (if tty1)
[[ -z $DISPLAY ]] || return # does not startx if already has a display

case $XDG_VTNR in
1) exec startx ~/.xinitrc dwm -- -keeptty >~/.xorg.log 2>&1 ;;
2) exec startx ~/.xinitrc steam -- -keeptty >~/.cagedsteam.log 2>&1 ;;
*) ;;
esac
