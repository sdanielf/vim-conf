#!/bin/bash

sudo apt-get -y install python-apt
supported=`distros/debian/check_vim_version.py`

if [ "$supported" = "1" ]; then
    sudo apt-get -y install vim-nox
else
    sudo apt-get -y install build-essential
    sudo apt-get -y build-dep vim-nox
    common/build_vim.sh
fi
