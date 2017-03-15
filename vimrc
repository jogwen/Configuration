""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore whitespace changes in diff mode:
""""""""""""""""""""""""""""""""""""""""""""""""
set diffopt+=iwhite

""""""""""""""""""""""""""""""""""""""""""""""""
" Force every buffer's fileformat=unix so that dos/Microsoft CR eol chars show up 
"     as ^M (of fileformat=dos, vim won't show the CR/^M at all, so it looks like 
"     an unix file):
""""""""""""""""""""""""""""""""""""""""""""""""
"set fileformats=unix

""""""""""""""""""""""""""""""""""""""""""""""""
" Display unprintable chars (eg. tab="^I", unix eol (LF)="$")
""""""""""""""""""""""""""""""""""""""""""""""""
"set list

""""""""""""""""""""""""""""""""""""""""""""""""
" Mouse scrolls shell, not vim and allow copy from vim
""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=r


""""""""""""""""""""""""""""""""""""""""""""""""
" Activate filetype plugins for:
" - F5 to execute python module from within vim (see also ~/.vim/ftplugin/python.vim)
" - intelligent indenting in python modules (see also ~/.vim/indent/python.vim)
" - ...
""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""
" Run pylint on each save in a python file
""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd FileType python compiler pylint
"let g:pylint_onwrite = 0
"let g:pylint_show_rate = 0
"let g:pylint_cwindow = 0

""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on syntax highlighting, but not in diff mode:
""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
if &diff
syntax off
endif

""""""""""""""""""""""""""""""""""""""""""""""""
"Set tab to be '    ' (4 spaces):
""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

""""""""""""""""""""""""""""""""""""""""""""""""
" Stop auto line breaks
""""""""""""""""""""""""""""""""""""""""""""""""
"set textwidth=80
"set wrapmargin=0

""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight search term
""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""
" Return to same place in file as last time
""""""""""""""""""""""""""""""""""""""""""""""""
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

""""""""""""""""""""""""""""""""""""""""""""""""
" Always show status bar (including filename)
""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""
" CSS syntax highlighting for .less files
""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.less set filetype=less
