filetype off
call pathogen#runtime_append_all_bundles()
set nocompatible
set number
syntax on
filetype plugin indent on
:map ,io oit 'should ' dok9li
:map ,iO Oit 'should ' do2k11li
:map ,dso odescribe  dok7li
:map ,dsO Odescribe  do2k9li
:map ,do odef kA
:map ,dO Odef 2kA
:map ,co oclass kA
:map ,cO Oclass 2kA
:map ,bo obefore(:each) do@ = Factory(:)kI<Right>
:map ,bO Obefore(:each) do@ = Factory(:)2kI<Right> 
:nmap <F12> :set invnumber<CR>	
:map <F9> :Tabularize /:\zs<CR>
:map <F5> :Git add -A:Git commit -m '.':Git push 
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

" GUI Settings {
    " GVIM- (here instead of .gvimrc)
    if has('gui_running')
        set guioptions-=T           " remove the toolbar
        set lines=40                " 40 lines of text instead of 24,
        "set transparency=10          " Make the window slightly transparent
    else
        set term=builtin_ansi       " Make arrow and other keys work
    endif
" }

