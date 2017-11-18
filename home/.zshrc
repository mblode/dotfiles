#!/bin/zsh
# shortcut to this dotfiles path is $DOTFILES
export DOTFILES="$HOME/Dotfiles"

# your project folder that we can `c [tab]` to
export PROJECTS="$HOME/Sites"

# your default editor
export EDITOR='code'

# Antibody
source ~/.zsh_plugins.sh

# Aliases
source $HOME/.aliases

# History Configuration
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

# Export
export PATH=~/.cargo/bin:$PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="/usr/local/sbin:$PATH"

source $HOME/.cargo/env

export PATH="/usr/local/bin:$PATH"
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/.yarn/bin:$PATH"

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
