#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
if [[ -e ~/.vimrc ]]; then
    echo -n "~/.vimrc already exists! Overwrite with symlink? [y/n]: "
    read ans
    if [[ "$ans" =~ "y" ]]; then
    ln -sF "$DIR/vimrc" ~/.vimrc
    fi
else
    ln -s "$DIR/vimrc" ~/.vimrc
fi
