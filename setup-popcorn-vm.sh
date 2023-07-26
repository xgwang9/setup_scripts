#!/bin/bash

echo "Install software dependencies."
sudo apt-get update -y

# QEMU
sudo apt install -y qemu-system-x86
sudo apt install -y build-essential libssl-dev libncursesw5-dev git curl bc \
	flex bison libelf-dev

git clone --depth=1 -b main --single-branch \
	https://github.com/ssrg-vt/popcorn-kernel.git ~/linux-x86


