#!/bin/bash

./scripts/apt-install.sh
./scripts/docker.sh
./scripts/misc.sh
./scripts/symlinks.sh
./scripts/neovim.sh
./scripts/guake.sh

# Get all upgrades
sudo apt upgrade -y

sudo apt autoremove -y

# See our bash changes
source ~/.bashrc
