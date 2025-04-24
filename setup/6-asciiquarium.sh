#!/bin/bash

asciiquarium_setup() {
	echo "TODO: install asciiquarium\n"
}

HOME="/home/noah/dotfiles"

if [[ $(pwd) != $HOME ]]; then
	echo "\n[setup.sh] Error: Current working directory must be run from ~/dotfiles\n"
	echo "Home directory is: $HOME"
	echo $(pwd)
	exit
fi

asciiquarium_setup | tee setup.log
