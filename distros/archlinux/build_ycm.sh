#!/bin/bash

sudo pacman --needed --noconfirm -S base-devel cmake python2 python ctags clang
common/build_ycm.sh -DEXTERNAL_LIBCLANG_PATH=/usr/lib/libclang.so
