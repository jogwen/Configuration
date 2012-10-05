Configuration for vim behaviour
============

Features include (but not limited to):
--------------
*   Remember current line from last time
*   4 space tabs
*   Switch for ignoring whitespace differences in vimdiff (comment/uncomment
    before opening your files in vimdiff)
*   Per-filetype behaviours:
    *   Python:
        * Execute module from within vim via F5 (see vim/ftplugin/python.vim)
        * Intelligent auto-indenting (see vim/indent/python.vim)

Installation
------------
*   git clone the repo to a sensible directory (I mkdir a new dir ~/config/ for it)
*   cd into the directory
*   Run install.sh (this sets up all the necessary symlinks - see below)

Files
----
*   install.sh
    *   Creates symlinks to install the config files (see below)
*   vimrc
    *   Settings for any file opened in vim
    *   install.sh creates a symlink to this from ~/.vimrc
*   vim/indent/python.vim
    *   Settings for auto-indent behaviour for python files opened in vim
    *   install.sh creates a symlink to this from ~/.vim/indent/python.vim
*   vim/ftplugin/python.vim
    *   Other settings for python files opened in vim
    *   install.sh creates a symlink to this from ~/.vim/ftplugin/python.vim

