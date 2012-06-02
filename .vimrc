filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
set nocompatible
set number
syntax on
filetype plugin indent on
:set mouse=a
:set ttymouse=xterm
:set tags+=gems.tags

":set bomb
:set encoding=utf-8
:set fileencoding=utf-8
:set spelllang=pl,en
:set spell

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
:imap jk ;w
:imap qq 

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
:map <F5> :Git add -A:Git commit -m '.':Git push 
:map <F6> :Git add -A:Git commit -m '.':Git svn rebase
:map <F7> :Git svn dcommit
:map <F8> :!rake assets:clean:!rm -R public/assets:!rake assets:precompile:!cp public/assets/application<Tab> public/application.js
:nmap <F2> :set fdm=expr:set fde=getline(v:lnum)=~'^\\s#'?1:getline(prevnonblank(v:lnum))=~'^\\s#'?1:getline(nextnonblank(v:lnum))=~'^\\s*#'?1:0

set tabstop=2
set shiftwidth=2
set shiftround
set showmatch
set expandtab
set autoindent
set copyindent
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=1000         " remember more commands and search history
set undolevels=1000
set nobackup
set noswapfile
set backspace=indent,eol,start
colorscheme railscasts
set guifont=Terminus\ 9

"whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

:map <F3> :retab:%s/\s\+$//e:%s/\r//g
:map <F4> :%s/:\([^ ]*\)\(\s*\)=>/\1:/g

"reload vimrc
:map <F1> :source $MYVIMRC

set guioptions-=T           " remove the toolbar

"create directories if them dosent exists
augroup AutoMkdir
    autocmd!
    autocmd  BufNewFile  *  :call EnsureDirExists()
augroup END
function! EnsureDirExists ()
    let required_dir = expand("%:h")
    if !isdirectory(required_dir)
        call AskQuit("Directory '" . required_dir . "' doesn't exist.", "&Create it?")

        try
            call mkdir( required_dir, 'p' )
        catch
            call AskQuit("Can't create '" . required_dir . "'", "&Continue anyway?")
        endtry
    endif
endfunction

function! AskQuit (msg, proposed_action)
    if confirm(a:msg, a:proposed_action . "\n&Quit?") == 2 
        exit
    endif
endfunction

"cursor color"
if &term =~ "rxvt-unicode"
  "Set the cursor white in cmd-mode and orange in insert mode
  let &t_EI = "\<Esc>]12;white\x9c"
  let &t_SI = "\<Esc>]12;orange\x9c"
  "We normally start in cmd-mode
  silent !echo -e "\e]12;white\x9c"
endif

"folding"
  set foldenable
  set foldmethod=syntax
  set foldlevel=8
    """ Code folding options
  nmap <leader>f0 :set foldlevel=0<CR>
  nmap <leader>f1 :set foldlevel=1<CR>
  nmap <leader>f2 :set foldlevel=2<CR>
  nmap <leader>f3 :set foldlevel=3<CR>
  nmap <leader>f4 :set foldlevel=4<CR>
  nmap <leader>f5 :set foldlevel=5<CR>
  nmap <leader>f6 :set foldlevel=6<CR>
  nmap <leader>f7 :set foldlevel=7<CR>
  nmap <leader>f8 :set foldlevel=8<CR>
  nmap <leader>f9 :set foldlevel=9<CR>

au BufRead,BufNewFile *.twig set syntax=htmljinja
