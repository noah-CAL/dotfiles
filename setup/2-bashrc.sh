#!/bin/bash

bashrc_setup() {
	HOME="~"
	cp .bashrc $HOME
	cp .bash_aliases $HOME
	cp .bash_path $HOME
	# for Git status autocompletion
	curl https://raw.githubusercontent.com/git/git/blob/master/contrib/completion/git-prompt.sh -o ~/dotfiles/.git-prompt.sh
	cp .git-prompt.sh $HOME
}

WD="/home/noah/dotfiles"

if [[ $(pwd) != $WD ]]; then
	echo "Error: Current working directory must be run from ~/dotfiles"
	echo "Home directory is currently: $(pwd)"
	exit
fi

bashrc_setup | tee setup.log
