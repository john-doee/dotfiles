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

:set encoding=utf-8
:set fileencoding=utf-8
:set spelllang=pl,en
:set spell

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
let g:slime_target = "tmux"

"whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set guioptions-=T " remove the toolbar

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

:set rnu
