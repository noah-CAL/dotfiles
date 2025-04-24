#!/bin/bash

fortune_update() {
	echo "\nInstalling fortunes to /usr/share/games/fortunes/fortune-cookies.data\n"
	sed 'a%' fortune-cookies.txt > formatted-cookies
	sudo mv formatted-cookies /usr/share/games/fortunes/fortune-cookies
	sudo strfile /usr/share/games/fortunes/fortune-cookies /usr/share/games/fortunes/fortune-cookies.dat
}

fortune_setup() {
	echo "\nInstalling fortune, cowsay, lolcat\n"
	sudo apt install -y \
				fortune \
				cowsay \
				lolcat
	fortune_update
}

HOME="/home/noah/dotfiles"

if [[ $(pwd) != $HOME ]]; then
	echo "\n[setup.sh] Error: Current working directory must be run from ~/dotfiles\n"
	echo "Home directory is: $HOME"
	echo $(pwd)
	exit
fi

fortune_setup | tee setup.log
