#!/bin/bash

mkdir ~/ycm_build
cd ~/ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir . ~/.vim/bundle/YouCompleteMe/cpp
make ycm_support_libs
