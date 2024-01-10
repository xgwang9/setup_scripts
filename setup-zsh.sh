#!/bin/bash

# Install software packages
sudo apt install -y git wget zsh

# Install and config oh-my-zsh using the avit theme
wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
sed -i 's/robbyrussell/avit/g' ~/.zshrc

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

# You need to create a password file .passwd containing "[username]:[passwd]"
if [[ ! -f .passwd ]] ; then
  echo "Failed to find a .passwd file (last step)."
  echo "Manually execute: chsh -s \$(which zsh)"
  exit
fi
# Change default shell to zsh
awk -F ':' '{print $2}' .passwd | chsh -s $(which zsh)
