#!/bin/bash

# Setup password
# You should create a password file .passwd containing "[username]:[passwd]"
if [[ ! -f .passwd ]] ; then
  echo "echo \"[username]:[passwd]\" > .passwd"
  exit
fi
sudo sh -c "cat .passwd | chpasswd"

# Install dependencies
echo "Install software dependencies."
sudo apt-get update -y
# Install Python and pip
sudo apt install -y python3 python3-venv python3-pip
# GitHub
sudo apt install gh
# Other necessary packages
sudo apt install -y htop git wget tmux zsh sysstat

# Install and config oh-my-zsh using the avit theme
wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
sed -i 's/robbyrussell/avit/g' ~/.zshrc

# Change default shell to zsh
awk -F ':' '{print $2}' .passwd | chsh -s $(which zsh)
#zsh

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


# Setup vpn
#wget -qO - xiaoguang.wang/s.sh | bash

## Download VM image files from google drive
#pip install gdown
#/users/xgwang/.local/bin/gdown https://drive.google.com/uc\?id\=1ARDKpQBJipJTs8uGFly7Uku9PpH_b8e0
