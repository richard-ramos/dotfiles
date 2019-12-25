#!/bin/bash
sudo apt remove neovim -y
sudo rm -Rf /usr/bin/nvim

wget --quiet https://github.com/neovim/neovim/releases/latest/download/nvim.appimage --output-document nvim

chmod +x nvim
sudo chown root:root nvim

sudo mv nvim /usr/bin