#!/bin/bash

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# ls aliases
alias ll='ls -lh'
alias la='ls -A'
alias lh='ls -d .*'

# list automatically on directory change
function cd {
    builtin cd "$@" && ls -F
}

# handy git aliases
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m '
alias gca='git commit --append'
alias gb='git branch'

# Vivado
vivado_DIR=/opt/Xilinx/Vivado/2024.2/bin
if [ -d $vivado_DIR ]; then
	alias vivado-help="echo 'Available commands in $vivado_DIR are: ' ; ls $vivado_DIR"
fi
