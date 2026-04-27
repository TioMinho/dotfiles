#
# ~/.bashrc
# Configuration of the (interactive, non-login) bash(1) shell
# Here I'll configure history file, coloring/PS1, auto-completion, etc.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# (~/.bash_history): Define total number of lines and appending rules _________
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

shopt -s histappend
shopt -s checkwinsize

# (PS1): Definition of the prompt string #1 ____________________________________
PS1='[\[\033[0;32m\]\u\[\033[1;31m\]@\[\033[0;32m\]\h\[\033[0m\] \[\033[0;34m\]\W\[\033[0m\]]\$ '

# (zoxide): Starts the "smart cd" functionality
eval "$(zoxide init bash)"

# Definitions (env. variables, functions, etc.) ________________________________
export EDITOR=nvim
export GPG_TTY="$(tty)"
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# ALIASES _____________________________________________________________________
alias ls='ls --color=auto -h --group-directories-first'
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -c -h'
alias du1='du -h -d 1'
alias mkdir='mkdir -p'

alias matlabcli='matlab -nodesktop -nosplash'
alias matlabgui='matlab -nosplash'
