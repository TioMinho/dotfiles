#
# ~/.bash_profile
# Configuration file. Sourced by interactive login shells
# I'm using it to `startx' on login (tty)

# Sources .bashrc (configuration for regular shells)
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Environment variables
export LIBVA_DRIVER_PATH=/usr/lib/dri/
export LIBVA_DRIVER_NAME=iHD
export VDPAU_DRIVER=va_gl

# Autostart X on login (if tty1)
if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  startx -- -keeptty >~/.xorg.log 2>&1
fi

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:$HOME/.juliaup/bin:*)
        ;;

    *)
        export PATH=$HOME/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<