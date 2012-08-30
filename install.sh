#!/bin/bash
echo 'installation started'
git submodule update --init
git submodule foreach git pull origin master
mkdir ~/.vim
cp -R .vim ~
cp .vimrc ~
cp .gitconfig ~
echo 'installation completed'
