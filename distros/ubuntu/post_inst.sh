#!/bin/bash

sudo apt-get -y install cmake ctags
cd ~/.vim/bundle/YouCompleteMe

./install.sh --clang-completer
