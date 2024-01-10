#!/bin/bash

# 1. Setup password
source setup-passwd.sh

# 2. Install dependencies
sudo apt-get update -y
# Install Python and pip
sudo apt install -y python3 python3-venv python3-pip
# GitHub
sudo apt install gh
# Other necessary packages
sudo apt install -y htop sysstat

# 3. Setup zsh
source setup-zsh.sh

# 4. Setup vim
source setup-vim.sh


# Setup vpn
#wget -qO - xiaoguang.wang/s.sh | bash

## Download VM image files from google drive
#pip install gdown
#/users/xgwang/.local/bin/gdown https://drive.google.com/uc\?id\=1ARDKpQBJipJTs8uGFly7Uku9PpH_b8e0
