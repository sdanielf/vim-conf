#!/bin/bash

distros/other/install_vim.sh

sed 's/{{YCM}}//g' /tmp/vimrc > /tmp/vimrc2

cp /tmp/vimrc2 /tmp/vimrc
rm /tmp/vimrc2
