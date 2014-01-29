#!/bin/bash

sudo apt-get -y install vim-nox

if [ "`apt-cache search vim-youcompleteme`" ]; then
    sudo apt-get -y install vim-youcompleteme
    vam install youcompleteme
    sed 's/{{YCM}}/" /g' /tmp/vimrc > /tmp/vimrc2
else
    sed 's/{{YCM}}//g' /tmp/vimrc > /tmp/vimrc2
fi

cp /tmp/vimrc2 /tmp/vimrc
rm /tmp/vimrc2
