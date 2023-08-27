#!/bin/bash

source setup-host.sh
source setup-docker.sh

#sudo apt install gcc-multilib g++-multilib
sudo apt install -y gcc-multilib

cp -r /proj/popcornlinux-PG0/xiaoguang/cs487 ~

pushd ~
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
popd

echo 'alias cs487="cd /proj/popcornlinux-PG0/xiaoguang/cs487"' >> ~/.zshrc
