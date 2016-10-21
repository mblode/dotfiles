source ~/dotfiles/antigen.git/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tell antigen that you're done.
antigen apply

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export GOPATH=$HOME/Code/go

alias g='git'
