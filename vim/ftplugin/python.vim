" setting the makeprg to pep8 means I can quickly fix formatting errors
" by type :make and :cope
set makeprg=pep8\ --ignore=E501\ %

" Line number toggling
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
set number

" HilightCoverage plugin highlights lines lacking test coverage
" HilightCoverage

" Add format option flags (see |fo-table|)
set fo+=croq

" Map F5 to execute the current file (save first)
map <F5> :!python %<cr>

" Add site-packages to search path, useful for gf
set path+=/usr/local/lib/python2.7/site-packages


""""""""""""""""""""""""""""""""""""""""""""""""
" Dark green coloured columns 80 and 90 as guide for reasonable length lines
""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80,90
highlight ColorColumn ctermbg=0
" see :help ctermbg for colours, although they don't always seem to match up
" to reality!

