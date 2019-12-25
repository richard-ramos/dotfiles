#!/bin/bash

./scripts/apt-install.sh
./scripts/docker.sh
./scripts/neovim.sh
./scripts/guake.sh
./scripts/misc.sh
./scripts/symlinks.sh

# Get all upgrades
read -p "Install vscode? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    ./scripts/vscode/sh
fi

# Get all upgrades
read -p "Upgrade OS? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt upgrade -y
    sudo apt autoremove -y
fi


# See our bash changes
source ~/.bashrc
