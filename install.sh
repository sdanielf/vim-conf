#!/bin/bash

cp vimrc /tmp/vimrc
chmod 777 /tmp/vimrc

issue=`grep Ubuntu /etc/issue`
if [ -n "$issue" ]; then
    distros/ubuntu/pre_inst.sh
    POSTINST=distros/ubuntu/post_inst.sh
elif [ -f /etc/debian_version ]; then
    distros/debian/pre_inst.sh
    POSTINST=distros/debian/post_inst.sh
elif [ -f /etc/pacman.conf ]; then
    distros/archlinux/pre_inst.sh
    POSTINST=distros/archlinux/post_inst.sh
else
    distros/other/pre_inst.sh
    POSTINST=distros/other/post_inst.sh
fi

cp /tmp/vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
common/cloneorpull.sh https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

vim +BundleInstall +qall

$POSTINST
