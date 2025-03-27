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
	echo "TODO: Neovim nightly setup (installation with wget, etc)"

	echo "Neovim Setup -- installing dependencies"
	sudo apt install -y \
				fuse \
				ripgrep \

	echo "Neovim Setup -- downloading patched nerdfont (JetBrainsMono)"
	curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
	echo "TODO: JetBrainsMono download complete. Extract and install in Windows."

	echo "Copying existing config to ~/.config/nvim"
	mkdir -p ~/.config/nvim
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
