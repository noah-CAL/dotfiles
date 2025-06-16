#!/bin/bash

fortune_update() {
	echo "\nInstalling fortunes to /usr/share/games/fortunes/fortune-cookies.data\n"
	sed 'a%' fortune-cookies.txt > formatted-cookies
	mv formatted-cookies /usr/share/games/fortunes/fortune-cookies
	strfile /usr/share/games/fortunes/fortune-cookies /usr/share/games/fortunes/fortune-cookies.dat
}

fortune_setup() {
	echo "\nInstalling fortune, cowsay, lolcat\n"
	apt-get install -y \
				fortune \
				cowsay \
				lolcat
	fortune_update
}

CW="/home/noah/dotfiles"

if [[ $(pwd) != $CW ]]; then
	echo "\n[setup.sh] Error: Current working directory must be run from ~/dotfiles\n"
	echo "Home directory is: $CW"
	echo $(pwd)
	exit
fi

fortune_setup | tee setup.log
