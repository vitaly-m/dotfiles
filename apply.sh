#!/bin/sh
mkdir -p ~/.tmux/plugins/tpm
mkdir -p ~/.config/alacritty/themes
mkdir -p ${ZDOTDIR:-~}/.zsh_functions

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/zshrc ~/.zshrc
ln -s $(pwd)/alacritty.toml ~/.config/alacritty/alacritty.toml
