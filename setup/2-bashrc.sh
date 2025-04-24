#!/bin/bash

bashrc_setup() {
	echo "\nCopying to ~/.bashrc, ~/.bash_aliases, ~/.bash_path\n"
	cp .bashrc ~/.bashrc
	cp .bash_aliases ~/.bash_aliases
	cp .bash_path ~/.bash_path
	# for Git status autocompletion
	curl https://raw.githubusercontent.com/git/git/blob/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
}

HOME="/home/noah/dotfiles"

if [[ $(pwd) != $HOME ]]; then
	echo "\n[setup.sh] Error: Current working directory must be run from ~/dotfiles\n"
	echo "Home directory is: $HOME"
	echo $(pwd)
	exit
fi

bashrc_setup | tee setup.log
