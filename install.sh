#!/bin/bash

cp vimrc /tmp/vimrc
chmod 777 /tmp/vimrc

if [ -f /etc/debian_version ]; then
    distros/debian/pre_inst.sh
else
    distros/other/pre_inst.sh
fi

cp /tmp/vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
if [ -d ~/.vim/bundle/vundle ]; then
    oldpath=`pwd`
    cd ~/.vim/bundle/vundle
    git pull
    cd $oldpath
else
    git clone git://github.com/gmarik/vundle ~/.vim/bundle/vundle
fi
vim +BundleInstall +qall
