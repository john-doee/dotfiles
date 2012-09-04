" change the mapleader from \ to ,
let mapleader=","

noremap <leader>y "*y
noremap <leader>yy "*Y
:nmap <leader>m :Rmodel<Space>
:nmap <leader>c :Rcontroller<Space>
:nmap <leader>v :Rview<Space>
:nmap <leader>j :Rjavascript<Space>
:nmap <leader>s :Rstylesheet<Space>

" swap ; and :
nnoremap ; :
nnoremap ,; ;
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
:imap vv "+pa

:map <F3> :retab:%s/\s\+$//e:%s/\r//g
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

:nmap <Space> :CtrlP
:vmap ,t di= t("")hhp<F3>yi"
:vmap ,T di t()hp<F3>

:nmap <F12> :set invnumber<CR>	
:map <F9> :Tabularize/\w:\zs/l0l1<CR>
:map <F10> :Tabularize/ =>/l0r1l1<CR>
:nmap <F11> :set ft=html
nmap <silent> ,/ :nohlsearch<CR>

"git
:map <F5> :Git add -A:Git commit -m '.':Git push 
:map <F6> :Git add -A:Git commit -m '.':Git svn rebase
:map <F7> :Git svn dcommit
:map <F8> :!rake assets:clean:!rm -R public/assets:!rake assets:precompile:!cp public/assets/application<Tab> public/application.js

:nmap <F2> :set fdm=expr:set fde=getline(v:lnum)=~'^\\s#'?1:getline(prevnonblank(v:lnum))=~'^\\s#'?1:getline(nextnonblank(v:lnum))=~'^\\s*#'?1:0

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
