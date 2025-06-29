#!/bin/bash

# 1. install dependencies
sudo apt install zsh tmux git curl xclip

# 2. ohmyzsh
echo "[+] Installing ohmyzsh you may need to exit zsh after the installation is complete"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp zsh/zshrc ~/.zshrc
cp zsh/*.zsh-theme ~/.oh-my-zsh/themes

# 3. tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux.conf ~/.tmux.conf

echo "[+] To install the tmux plugins open a tmux session and press ctrl-b + I"

echo "[+] Done, now set your terminal emulators first command to: 'tmux new-session -A -s main'" 
