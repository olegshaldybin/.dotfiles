shopt -s histappend
export PROMPT_COMMAND="history -a"

export EDITOR="emacs"
export LC_ALL="C"
export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"

# Golang
export GOPATH=$HOME/projects/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# colors
LS_OPTIONS='--color=auto'
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1

# history
bind '"\C-p":history-search-backward'
bind '"\C-n":history-search-forward'
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=50000
HISTFILESIZE=50000

# aliases
alias ffh="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias ..='cd ..'
alias bers='bundle exec rake spec'
alias gl='git pull'
alias gd='git diff'
alias gca='git commit -a -m'
alias gco='git checkout'
alias s='git status'
alias glo='git log'
alias ls='ls --color -F'
alias g='cd ~/projects'
alias vi='vim'
alias ec='emacsclient -n'

git_branch() {
    branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    test -n "$branch" && echo "($branch)"
}

export PS1="\h:\w\$(git_branch)% "

# ruby
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# coreutils
brew=/usr/local/bin/brew
if [ -x $brew ]; then
  gnubin=$($brew --prefix coreutils)/libexec/gnubin
  gnuman=$($brew --prefix coreutils)/libexec/gnuman
  if [ -d $gnubin ]; then
    export PATH=$gnubin:$PATH
  fi
  if [ -d $gnuman ]; then
    export MANPATH=$gnuman:$MANPATH
  fi
fi

source ~/.bashrc.local
