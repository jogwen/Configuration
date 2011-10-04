" setting the makeprg to pep8 means I can quickly fix formatting errors
" by type :make and :cope
set makeprg=pep8\ --ignore=E501\ %

" number is for line numbering
set number

" HilightCoverage plugin highlights lines lacking test coverage
" HilightCoverage

" Add format option flags (see |fo-table|)
set fo+=croq

" Map F5 to execute the current file (save first)
map <F5> :!python %<cr>

" Add site-packages to search path, useful for gf
set path+=/usr/local/lib/python2.7/site-packages