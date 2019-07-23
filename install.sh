#!/bin/sh

#################################################################
# bashrc customisations:
#################################################################
# Create symlinks to our sub-config files:
ln -s $PWD/custom_bashrc ~/.custom_bashrc
ln -s $PWD/custom_bashrc_prompt ~/.custom_bashrc_prompt
ln -s $PWD/custom_bashrc_gitgraph ~/.custom_bashrc_gitgraph
ln -s $PWD/custom_bashrc_gitdiff ~/.custom_bashrc_gitdiff
ln -s $PWD/custom_bashrc_docker-compose ~/.custom_bashrc_docker-compose
# Now source our main file from the current user's .bashrc (back it up first)
echo "Creating backup before editing: ~/.bashrc.orig"
touch ~/.bashrc
cp -p ~/.bashrc ~/.bashrc.orig
echo "source ~/.custom_bashrc" >> ~/.bashrc

#################################################################
# Install binaries:
#################################################################
ln -s $PWD/bins/git_diff_wrapper /usr/local/bin/git_diff_wrapper
ln -s $PWD/bins/vaultgrep /usr/local/bin/vaultgrep

#################################################################
# Finish off installing vimdiff-like 'git diff':
#################################################################
echo "Creating backup before editing: ~/.gitconfig.orig"
touch ~/.gitconfig
cp -p ~/.gitconfig ~/.gitconfig.orig
echo "[diff]\n    external = git_diff_wrapper\n[pager]\n    diff =" >> ~/.gitconfig

#################################################################
# vim customisations:
#################################################################
ln -s $PWD/vimrc ~/.vimrc
mkdir -p ~/.vim/ftplugin
ln -s $PWD/vim/ftplugin/python.vim ~/.vim/ftplugin/python.vim
mkdir -p ~/.vim/indent
ln -s $PWD/vim/indent/python.vim ~/.vim/indent/python.vim

echo "\n\nNow run \"source ~/.bashrc\" to complete installation.\n"
