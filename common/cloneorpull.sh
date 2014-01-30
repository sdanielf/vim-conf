#!/bin/bash

if [ -d $2 ]; then
    cd $2
    git pull
else
    git clone $1 $2
fi
