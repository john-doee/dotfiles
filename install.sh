#!/bin/bash
echo 'kopiowanie'
git submodule update
mkdir ~/.vim
cp -R .vim ~
cp .vimrc ~
