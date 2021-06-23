#!/usr/bin/env bash
set -euo pipefail 
IFS=$'\n\t'

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

if [[ -e ~/.config/nvim/init.vim ]]; then
    echo -n "~/.config/nvim/init.vim already exists! Overwrite with symlink? [y/n]: "
    read ans
    if [[ "$ans" =~ "y" ]]; then
    ln -sF "$DIR/vimrc" ~/.config/nvim/init.vim
    fi
else
    mkdir -p ~/.config/nvim
    ln -s "$DIR/vimrc" ~/.config/nvim/init.vim
fi
