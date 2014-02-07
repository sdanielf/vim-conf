#!/bin/bash

sudo apt-get -y install build-essential cmake g++ python-dev ctags
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
