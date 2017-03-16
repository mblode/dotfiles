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
PATH="/usr/local/sbin:$PATH"
export EDITOR='subl -w'
export PATH="/Applications/Racket v6.8/bin"
# autoload -Uz promptinit
# promptinit
# prompt pure

alias g='git'

export PATH="/usr/local/bin:$PATH"
