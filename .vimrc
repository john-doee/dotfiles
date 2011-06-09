filetype off
call pathogen#runtime_append_all_bundles()
set nocompatible
set number
syntax on
filetype plugin indent on
:map <F4>i iit 'should ' doendkk9li
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
