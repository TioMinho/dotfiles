#!/bin/bash
# dotfiles - INSTALLATION SCRIPT _______________________________________________

# Auxiliary variables
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Creates a backup of the current dotfiles, then creates the necessary
#  symbolic links. The backup files might be deleted afterwards
for f in .bashrc .config/nvim .config/tmux .config/tmux-powerline; do
    if [ -f $HOME/$f ]; then
       mv $HOME/$f mv $HOME/$f.bak 
    fi

    ln -s $SCRIPT_DIR/$f $HOME/$f
done
