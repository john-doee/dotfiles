#!/bin/bash
echo 'installation started'
git submodule update --init
git submodule foreach git pull origin master
mkdir ~/.vim
cp -R .vim ~
mkdir ~/.fonts
cp -R .fonts ~
fc-cache -vf
cp .vimrc ~
cp .zshrc ~
cp .tmux.conf ~
cp .vimperatorrc ~
cp .gitconfig ~
cp .Xresources ~
echo 'installation completed'
vim +BundleInstall +qall
