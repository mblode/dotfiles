source ~/dotfiles/antigen.git/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done.
antigen apply

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=~/.cargo/bin:$PATH
export PATH=$PATH:~/.composer/vendor/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="/Applications/Racket v6.8/bin:$PATH"
# autoload -Uz promptinit
# promptinit
# prompt pure

alias g='git'

export PATH="/usr/local/bin:$PATH"

function homestead() {
  ( cd ~/Homestead && vagrant $* )
}

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
