#!/bin/bash

./scripts/apt-install.sh
./scripts/docker.sh
./scripts/gitrepos.sh
./scripts/symlinks.sh

# Get all upgrades
# sudo apt upgrade -y

# See our bash changes
source ~/.bashrc
