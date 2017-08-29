#!/bin/sh

VIMFOLDER='.vim'

if ! [ ! -d $VIMFOLDER/autoload ]; then
    target=$VIMFOLDER/autoload/plug.vim
    if [ -e $target ]; then
        echo "${target} already exists... Skipping."
    else
        echo "Creating plug"
	curl -fLo $target --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    fi
fi
