#!/bin/bash

source setup-host.sh
#source setup-docker.sh

sudo apt install clang libelf1 libelf-dev zlib1g-dev

pushd ~
git clone https://github.com/libbpf/libbpf-bootstrap.git 
cd libbpf-bootstrap
git submodule update --init --recursive
cd examples/c
make

popd

echo '' >> ~/.zshrc
echo 'alias cs487="cd /proj/popcornlinux-PG0/xiaoguang/cs487"' >> ~/.zshrc
echo 'alias savehost="cp ~/.zsh_history /proj/popcornlinux-PG0/xiaoguang/setup_scripts/.zsh_history"' >> ~/.zshrc
echo 'export PATH=$PATH:/users/xgwang/.local/bin' >> ~/.zshrc
cp .zsh_history ~

echo '' >> ~/.zshrc
pip install thefuck
echo 'eval $(thefuck --alias)' >> ~/.zshrc
#source ~/.zshrc
