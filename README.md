Configurations for some software which may be reused on different machines.

Prerequisites:
- tmux
- zsh
- alacritty
- nerd fonts (Hack Nerd Font Mono)

Clone this repository and navigate into folder with it.

How to apply:
1. Clone tpm
```sh
mkdir -p ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
2. Make symlink for tmux.conf
```sh
ln -s $(pwd)/tmux.conf ~/.tmux.conf
```
3. Make symlink for zshrc
```sh
ln -s $(pwd)/zshrc ~/.zshrc
```
4. Download alacritty themes
```sh
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
```
5. Make symlink for alacritty config file
```sh
ln -s $(pwd)/alacritty.toml ~/.config/alacritty/alacritty.toml
```
5. Open tmux, execute `<C-b><I>` to install plugins
