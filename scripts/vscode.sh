#!/bin/bash

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg

function install {
  name="${1}"
  code --install-extension ${name} --force
}

install kamud.vscode-theme-onedark    
install zhuangtongfa.Material-theme
install PKief.material-icon-theme
install dbaeumer.vscode-eslint
install esbenp.prettier-vscode
install donjayamanne.githistory
install eamodio.gitlens
install CoenraadS.bracket-pair-colorizer
install wayou.vscode-todo-highlight
install Gruntfuggly.todo-tree
install tintinweb.vscode-inline-bookmarks
install ms-vscode.cpptools
install ms-vscode.Go
install kosz78.nim
install rust-lang.rust
install JuanBlanco.solidity
install tintinweb.solidity-visual-auditor
