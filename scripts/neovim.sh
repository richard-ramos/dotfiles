#!/bin/bash

sudo apt remove neovim -y
sudo rm -Rf /usr/bin/nvim

curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
sudo mv ./nvim.appimage /usr/bin/nvim

pip3 install neovim
