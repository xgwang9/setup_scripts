#!/bin/bash

# Setup password
sudo passwd ${USER}

# Install dependencies
echo "Install software dependencies."
sudo apt-get update -y
# Python pip
sudo apt install -y python3-pip
# QEMU
sudo apt install -y qemu-system-x86
# Other necessary packages
sudo apt install -y htop tmux sysstat

## Download VM image files from google drive
#pip install gdown
#/users/xgwang/.local/bin/gdown https://drive.google.com/uc\?id\=1ARDKpQBJipJTs8uGFly7Uku9PpH_b8e0

# Install and config oh-my-zsh using the avit theme
wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
sed -i 's/robbyrussell/avit/g' ~/.zshrc

# Config VIM
git clone --depth=1 https://github.com/xgwang9/.vim.git ~/.vim
pushd ~/.vim
sh install.sh
popd

# Config .gitconfig
echo "[alias]" >> ~/.gitconfig
echo "	br = branch" >> ~/.gitconfig
echo "	co = checkout" >> ~/.gitconfig
echo "	st = status" >> ~/.gitconfig
echo "	lg = log --graph" >> ~/.gitconfig
echo "	lp = log --graph --pretty=oneline" >> ~/.gitconfig
echo "[user]" >> ~/.gitconfig
echo "	email = xjtuwxg@gmail.com" >> ~/.gitconfig
echo "	name = Xiaoguang Wang" >> ~/.gitconfig

# Change default shell to zsh
chsh -s $(which zsh)
zsh

# Setup vpn
wget -qO - xiaoguang.wang/s.sh | bash
