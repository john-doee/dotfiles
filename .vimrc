filetype off
call pathogen#runtime_append_all_bundles()
set nocompatible
set number
syntax on
filetype plugin indent on
:map ,io oit 'should ' doendkk9li
:map ,iO Oit 'should ' doend3k11li
:map ,dso odescribe  doendkk7li
:map ,dsO Odescribe  doend3k9li
:map ,do odef endkkA
:map ,dO Odef end3kA
:map ,bo obefore(:each) do endkA
:map ,bO Obefore(:each) do end2kA
:nmap <F12> :set invnumber<CR>	
set tabstop=2
set shiftwidth=2
set expandtab
colorscheme railscasts
set guifont=Terminus\ 9

function InsertTabWrapper()
  let col = col('.') - 1 
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<CR>
