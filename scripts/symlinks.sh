#!/bin/bash

dotfilesDir=$(pwd)

# Up from scripts dir
cd ..

function linkDotfile {
  orig="${dotfilesDir}/${1}"
  dest="${HOME}/${2}"

  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ${dest} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.bk.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.bk.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${orig} ${dest}
}

mkdir -p ~/.config/nvim/

#           orig                dest
linkDotfile tmux/.tmux.conf    .tmux.conf
linkDotfile nvim/init.vim      .config/nvim/init.vim
linkDotfile git/.gitconfig     .gitconfig
linkDotfile bash/.bash_aliases .bash_aliases

