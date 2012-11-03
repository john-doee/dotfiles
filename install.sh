#!/bin/bash
echo 'installation started'
git submodule update --init
git submodule foreach git pull origin master
mkdir ~/.vim
cp -R .vim ~
mkdir ~/.fonts
cp -R .fonts ~/.fonts
fc-cache -vf
cp .vimrc ~
cp .tmux.conf ~
cp .vimperatorrc ~
cp .gitconfig ~
echo 'installation completed'
vim +BundleInstall +qall
