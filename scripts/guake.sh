#!/bin/bash

git clone https://github.com/Guake/guake.git guake-repo
cd guake-repo

$ ./scripts/bootstrap-dev-debian.sh run make

make
sudo make install

guake --restore-preferences=../guake/guake.conf

cd ..
rm -Rf ./guake-repo