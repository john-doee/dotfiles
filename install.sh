#!/bin/bash
echo 'installation started'
git submodule update --init
mkdir ~/.vim
cp -R .vim ~
cp .vimrc ~
cp .gitconfig ~
echo 'installation completed'
