#!/bin/sh

ln -s $PWD/vimrc ~/.vimrc
mkdir -p ~/.vim/ftplugin
ln -s $PWD/vim/ftplugin/python.vim ~/.vim/ftplugin/python.vim
mkdir -p ~/.vim/indent
ln -s $PWD/vim/indent/python.vim ~/.vim/indent/python.vim
