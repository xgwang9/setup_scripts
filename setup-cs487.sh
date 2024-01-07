#!/bin/bash
# setup-cs487.sh

# Basic host setup
source setup-host.sh
# Install docker
source setup-docker.sh
# Exploit-related tools
#source setup-exploit.sh

# Install Software Packages
## For 32-bit building environment
#sudo apt install gcc-multilib g++-multilib
sudo apt install -y gcc-multilib
sudo apt install -y ltrace
sudo apt install -y checksec
sudo apt install -y tree

# Define zsh command alias
echo 'alias savehistory="cp ~/.zsh_history /proj/popcornlinux-PG0/xiaoguang/setup_scripts/.zsh_history"' >> ~/.zshrc
cp .zsh_history ~

echo '' >> ~/.zshrc
echo 'alias cs487="cd /proj/popcornlinux-PG0/xiaoguang/cs487"' >> ~/.zshrc

# Install other tools
echo '' >> ~/.zshrc
pip install thefuck
echo 'eval $(thefuck --alias)' >> ~/.zshrc
#source ~/.zshrc
