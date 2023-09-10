#!/bin/bash

source setup-host.sh
source setup-docker.sh

# For 32-bit building environment
#sudo apt install gcc-multilib g++-multilib
sudo apt install -y gcc-multilib
sudo apt install -y ltrace
sudo apt install -y checksec

#cp -r /proj/popcornlinux-PG0/xiaoguang/cs487 ~

pushd ~
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
popd

echo 'alias cs487="cd /proj/popcornlinux-PG0/xiaoguang/cs487"' >> ~/.zshrc
cp .zsh_history ~
