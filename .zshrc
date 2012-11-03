# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

[ -z "STMUX" ] && export TERM=xterm-256color

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export EDITOR=vim
bindkey -v

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
setopt AUTO_CD

ZSH_THEME="agnoster"

alias a="git add -A"
c() { git commit -m "$*"}
alias h="git push"
alias prod="git push prod"
alias stage="git push staging"
alias s="git status"
alias v='vim'
alias t='vim ~/Todo'
alias ud='sudo apt-get update'
alias ug='sudo apt-get dist-upgrade'
alias fug='sudo aptitude full-upgrade'
alias bu='bundle update'
alias tmux='tmux -2'
alias m='mux'
alias gl="git pull --rebase"
alias suspensions="tail -10000 /var/log/pm-suspend.log | grep -B1 'Finished'"
alias ta="tar -czvf"
alias uta="tar -zxvf"

plugins=(rails ruby git symfony2 wakeonlan autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/t/.rvm/bin
source /home/t/.rvm/scripts/rvm
export LIBOVERLAY_SCROLLBAR=0
export XDG_RUNTIME_DIR=~/tmp

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
rvm use --default 1.9.3-perf@r3
