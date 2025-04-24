#!/bin/bash

tmux_setup() {
	echo "\nCopying to ~/.bashrc, ~/.bash_aliases, ~/.bash_path\n"
	cp .tmux.conf ~/.tmux.conf
}

HOME="/home/noah/dotfiles"

if [[ $(pwd) != $HOME ]]; then
	echo "\n[setup.sh] Error: Current working directory must be run from ~/dotfiles\n"
	echo "Home directory is: $HOME"
	echo $(pwd)
	exit
fi

tmux_setup | tee setup.log
