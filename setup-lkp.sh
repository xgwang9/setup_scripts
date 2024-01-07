#!/bin/bash

# Basic host setup
source setup-host.sh
# Install docker
source setup-docker.sh

# Install Software Packages
sudo apt install -y build-essential git bc libssl-dev flex bison wget \
	python3 python3-venv ninja-build pkg-config libglib2.0-dev libelf-dev libslirp-dev
sudo apt install -y ltrace tree
# QEMU
sudo apt install -y qemu-system-x86

# Define zsh command alias
echo 'alias savehost="cp ~/.zsh_history /proj/popcornlinux-PG0/xiaoguang/setup_scripts/.zsh_history"' >> ~/.zshrc
cp .zsh_history ~

# Install other tools
#echo '' >> ~/.zshrc
#pip install thefuck
#echo 'eval $(thefuck --alias)' >> ~/.zshrc
#source ~/.zshrc
