#!/bin/bash

git clone https://github.com/Guake/guake.git
cd guake

$ ./scripts/bootstrap-dev-debian.sh run make

make
sudo make install

cd ..
rm -Rf ./guake

guake --restore-preferences=../guake/guake.conf

