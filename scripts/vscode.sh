#!/bin/bash

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg
# ln -s $(pwd)/../vsc_settings.json $HOME/.config/Code/User/settings.json

function install {
  name="${1}"
  code --install-extension ${name} --force
}

install batisteo.vscode-django
install bibhasdn.django-html
install emmanuelbeziat.vscode-great-icons
install HookyQR.beautify
install jolaleye.horizon-theme-vscode
install killalau.vscode-liquid-snippets
install liviuschera.noctis
install ms-python.python
install ms-vscode-remote.remote-containers
install ms-vscode.Go
install neilding.language-liquid
install streetsidesoftware.code-spell-checker
install vscode-icons-team.vscode-icons
install zxh404.vscode-proto3