#!/bin/bash

# 1. install dependencies
sudo apt install zsh tmux vim curl

# 2. ohmyzsh
echo "[+] Installing ohmyzsh you may need to exit zsh after the installation is complete"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp zshrc ~/.zshrc

# 3. tmux themepack
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
cp tmux.conf ~/.tmux.conf

# 4. vimrc
cp vimrc ~/.vimrc

echo "[+] Done, now set your terminal emulators first command to: 'tmux new-session -A -s main'" 
