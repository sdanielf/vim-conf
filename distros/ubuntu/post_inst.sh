#!/bin/bash

sudo apt-get -y install cmake g++ python-dev ctags
cd ~/.vim/bundle/YouCompleteMe

./install.sh --clang-completer
