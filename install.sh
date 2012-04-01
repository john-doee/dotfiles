#!/bin/bash
echo 'kopiowanie'
git submodule update --init
mkdir ~/.vim
cp -R .vim ~
cp .vimrc ~
cp .gitconfig ~
