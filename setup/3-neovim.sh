#!/bin/bash

neovim_setup() {
	echo "\nTODO: Neovim nightly setup (installation with wget, etc)\n"

	echo "\nNeovim Setup -- installing dependencies\n"
	sudo apt install -y \
				fuse \
				ripgrep \

	echo "\nNeovim Setup -- downloading patched nerdfont (JetBrainsMono)\n"
	curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
	echo "\nTODO: JetBrainsMono download complete. Extract and install in Windows.\n"

	echo "\nCopying existing config to ~/.config/nvim\n"
	git submodule init
	git submodule update
	mkdir -p ~/.config/nvim
	cp -r Neovim-Config/* ~/.config/nvim
}

HOME="/home/noah/dotfiles"

if [[ $(pwd) != $HOME ]]; then
	echo "\n[setup.sh] Error: Current working directory must be run from ~/dotfiles\n"
	echo "Home directory is: $HOME"
	echo $(pwd)
	exit
fi

neovim_setup | tee setup.log
