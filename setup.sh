#!/bin/bash

bashrc_setup() {
	echo "Copying to ~/.bashrc, ~/.bash_aliases, ~/.bash_path"
	cp .bashrc ~/.bashrc
	cp .bash_aliases ~/.bash_aliases
	cp .bash_path ~/.bash_path
	cp .bash_profile ~/.bash_profile
	# for Git status autocompletion
	curl https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
}

tmux_setup() {
	echo "Copying to ~/.bashrc, ~/.bash_aliases, ~/.bash_path"
	cp .tmux.conf ~/.tmux.conf
}

neovim_setup() {
	echo "TODO: Neovim setup (installation with wget, etc)"
	echo "Copying to ~/.config/nvim"
	cp -r Neovim-Config/* ~/.config/nvim
}

HOME="/home/noah/dotfiles"

if [[ $(pwd) != $HOME ]]; then
	echo "[setup.sh] Error: Current working directory must be run from ~/dotfiles"
	echo $HOME
	echo $(pwd)
	exit
fi

bashrc_setup()
tmux_setup()
neovim_setup()

echo "TODO: copy settings.json to WSL2"
