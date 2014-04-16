#!/bin/bash

distros/archlinux/build_ycm.sh
distros/archlinux/build_tern.sh
common/install_jslint.sh
sudo pacman -S pep8 python-pyflakes
