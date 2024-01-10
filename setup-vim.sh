#!/bin/bash

# Install software packages
sudo apt install -y vim

# Config VIM
git clone --depth=1 https://github.com/xgwang9/.vim.git ~/.vim
pushd ~/.vim
sh install.sh
popd
