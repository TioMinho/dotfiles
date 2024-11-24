#
# ~/.bashrc
# Configuration of the (interactive, non-login) bash(1) shell
# Here I'll configure history file, coloring/PS1, auto-completion, etc.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# (~/.bash_history): Define total number of lines and appending rules
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

shopt -s histappend
shopt -s checkwinsize

# (PS1): Definition of the prompt string #1
PS1='[\[\033[0;32m\]\u\[\033[1;31m\]@\[\033[0;32m\]\h\[\033[0m\] \[\033[0;34m\]\W\[\033[0m\]]\$ '

# (ssh-agent): Enable automatic starting on session (killed after 1hr)
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# Definitions (env. variables, functions, etc.)
export EDITOR=nvim
export PATH=$PATH:/opt/nvim-linux64/bin:$HOME/.juliaup/bin
export GPG_TTY="$(tty)"

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias matlabcli='matlab -nodesktop -nosplash'
alias matlabgui='matlab -nosplash'
