#!/bin/bash

## Install Racket
wget -P $HOME/Downloads http://mirror.racket-lang.org/installers/6.2.1/racket-\
6.2.1-src.tgz /
tar xzvf $HOME/Downloads/racket-6.2.1-src.tgz
cd $HOME/Downloads/racket-6.2.1/src
mkdir build
cd build
./configure
make
make install
