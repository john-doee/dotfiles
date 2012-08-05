#!/bin/bash
echo 'installation started'
git submodule update --init
git submodule foreach git l origin master
mkdir ~/.vim
cp -R .vim ~
cp .vimrc ~
cp .vimperatorrc ~
cp .gitconfig ~
echo 'installation completed'
