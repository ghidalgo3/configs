#!/usr/bin/env bash
if [[ -e ~/.vimrc ]]; then
    echo -n "~/.vimrc already exists! Overwrite with symlink? [y/n]: "
    read ans
    if [[ "$ans" =~ "y" ]]; then
	ln -sF vimrc ~/.vimrc
    fi
else
    ln -s vimrc ~/.vimrc
fi
