#!/bin/sh

#################################################################
# bash_profile customisations:
#################################################################
# Create symlinks to our sub-config files:
ln -s $PWD/custom_bash_profile ~/.custom_bash_profile
ln -s $PWD/custom_bash_profile_prompt ~/.custom_bash_profile_prompt
ln -s $PWD/custom_bash_profile_gitgraph ~/.custom_bash_profile_gitgraph
ln -s $PWD/custom_bash_profile_gitdiff ~/.custom_bash_profile_gitdiff
ln -s $PWD/custom_bash_profile_docker-compose ~/.custom_bash_profile_docker-compose
# Now source our main file from the current user's .bash_profile (back it up first)
echo "Creating backup before editing: ~/.bash_profile.orig"
touch ~/.bash_profile
cp -p ~/.bash_profile ~/.bash_profile.orig
echo "source ~/.custom_bash_profile" >> ~/.bash_profile

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

echo "\n\nNow run \"source ~/.bash_profile\" to complete installation.\n"
