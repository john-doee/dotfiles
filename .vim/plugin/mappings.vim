" change the mapleader from \ to ,
let mapleader=","

:nmap ,rm :Rmodel
:nmap ,rc :controller
:nmap ,rv :Rview
:nmap ,rj :Rjavascript
:nmap ,rs :Rstylesheet

" swap ; and :
nnoremap ; :
nnoremap ,; ;
:nmap <Space> ,t
"            NAVIGATION
"
"stronger then will
:nmap <up> <nop>
:nmap <down> <nop>
:nmap <left> <nop>
:nmap <right> <nop>
:nmap <leader>jk ;w
:nmap <leader>kjk ;wq
:imap jk ;w
:imap kjk ;wq
:imap qq 

:map <F3> :retab
:map <F4> :%s/:\([^ ]*\)\(\s*\)=>/\1:/g

"reload vimrc
:map <F1> :source $MYVIMRC
""" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
" 
" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"better cursor moves for wrapped lines
nnoremap j gj
nnoremap k gk

nnoremap ,t :CtrlP

:nmap <F12> :set invnumber<CR>	
:map <F9> :Tabularize/\w:\zs/l0l1<CR>
:map <F10> :Tabularize/ =>/l0r1l1<CR>
nmap <silent> ,/ :nohlsearch<CR>

"git
:map <F5> :Git add -A
:map <F6> :Git add -A
:map <F7> :Git svn dcommit
:map <F8> :!rake assets:clean

:nmap <F2> :set fdm=expr

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>