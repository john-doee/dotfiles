filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
set nocompatible
set number
syntax on
filetype plugin indent on

" change the mapleader from \ to ,
let mapleader=","

"rspec
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
:nmap ,rm :Rmodel 
:nmap ,rc :controller 
:nmap ,rv :Rview 
:nmap ,rj :Rjavascript 
:nmap ,rs :Rstylesheet 

"            NAVIGATION
"
"stronger then will
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"better cursor moves for wrapped lines
nnoremap j gj
nnoremap k gk

nnoremap ; :
:nmap <F12> :set invnumber<CR>	
:map <F9> :Tabularize /:\zs<CR>
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
