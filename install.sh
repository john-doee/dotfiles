#!/bin/bash
echo 'kopiowanie'
git submodule update
mkdir ~/.vim/
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle
mkdir ~/.vim/bundle/vim-coffee-script
mkdir ~/.vim/plugin
cp -R .vim/bundle/vim-coffee-script/* ~/.vim/bundle/vim-coffee-script
cp -R .vim/ ~/.vim/
cp -R .vim/after ~/.vim/after
cp .vim/plugin/Tabular.vim ~/.vim/plugin/Tabular.vim
cp .vim/autoload/tabular.vim ~/.vim/autoload/tabular.vim
cp .vimrc ~/.vimrc
cp .vim/autoload/dbext_dbi.vim ~/.vim/autoload/dbext_dbi.vim
cp .vim/autoload/dbext.vim ~/.vim/autoload/dbext.vim
cp .vim/plugin/dbext.vim ~/.vim/plugin/dbext.vim
cp .vim/doc/dbext.txt ~/.vim/doc/dbext.txt
cp .vim/doc/dbext_gpl.dat ~/.vim/doc/dbext_gpl.dat
