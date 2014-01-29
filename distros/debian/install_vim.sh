#!/bin/bash

sudo apt-get -y install python-apt
supported=`distros/debian/check_vim_version.py`

if [ "$supported" = "1" ]; then
    sudo apt-get install vim-nox
else
    sudo apt-get build-dep vim-nox
    distros/other/build_vim.sh
fi
