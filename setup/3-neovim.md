# Neovim Nightly Setup

## 1. Prerequisites

```
sudo apt install -y \
    fuse    \   # appImage extraction
    ripgrep \   # Telescope.nvim
    python3 \
    python3.11-venv  \ # for Plugin dependencies
```

## 2. Install Neovim Nightly app image

From the [releases](https://github.com/neovim/neovim/releases/) page:

```
> ls
nvim-linux-x86_64.appimage
> chmod u+x nvim-linux-x86_64.appimage 
> mv nvim-linux-x86_64.appimage nvim
> sudo mv nvim /usr/local/bin

```
Note that `/usr/local/bin` should already be in $PATH with `.bash_path`.

## 3. Fonts

Download patched Nerdfont.

```
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
mv JetBrainsMono.zip ~/desktop
```

Move to Windows, extract ZIP and install fonts.


## 4. Neovim config

```
mkdir -p ~/.config/nvim
cp -r Neovim-Config/* ~/.config/nvim
```

## 5. IDE Features

Manually install necessary linters / formatters with `:Mason`

