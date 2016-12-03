export EDITOR="emacs"
export TERM=xterm-256color

# golang
if [[ -f /usr/local/go ]]; then
    export PATH=$PATH:/usr/local/go/bin
fi

export GOPATH=$HOME/projects/go
export PATH=$PATH:$GOPATH/bin

# history
bind '"\C-p":history-search-backward'
bind '"\C-n":history-search-forward'

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=50000
HISTFILESIZE=50000

shopt -s histappend
export PROMPT_COMMAND="history -a"

# aliases
alias tmux="tmux -2"
alias vi="vim"
alias ffh="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias ..='cd ..'
alias gl='git pull'
alias gd='git diff'
alias gca='git commit -a -m'
alias gco='git checkout'
alias s='git status'
alias glo='git log'
alias ls='ls --color=auto'
alias g='cd ~/projects'
alias vi='vim'

git_branch() {
    branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    test -n "$branch" && echo "($branch)"
}

export PS1="\h:\W\$(git_branch)% "

# coreutils (OSX)
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

if [[ -f ~/.bashrc.local ]]; then
  source ~/.bashrc.local
fi
