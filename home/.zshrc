source ~/dotfiles/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle yarn
antigen bundle web-search

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Tell antigen that you're done.
antigen apply

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH=~/.cargo/bin:$PATH
export PATH=$PATH:~/.composer/vendor/bin
export PATH="/usr/local/sbin:$PATH"

source $HOME/.cargo/env

export PATH="/usr/local/bin:$PATH"
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias g='git'
alias add='git add -A'
alias pull='git pull origin master'
alias commit='git commit -m'
alias push='git push'
alias ..='cd ..'
alias ...='cd ../..'
alias rm='trash'
