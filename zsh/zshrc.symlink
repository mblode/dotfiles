#!/bin/zsh
# shortcut to this dotfiles path is $DOTFILES
export DOTFILES="$HOME/Dotfiles"

# your project folder that we can `c [tab]` to
export PROJECTS="$HOME/Sites"

# your default editor
export EDITOR='code'

# all of our zsh files
typeset -U config_files
config_files=($DOTFILES/*/*.zsh)

# load the path files
for file in ${(M)config_files:#*/path.zsh}; do
  source "$file"
done

# load antibody plugins
source ~/.zsh_plugins.sh

# load everything but the path and completion files
for file in ${${config_files:#*/path.zsh}:#*/completion.zsh}; do
  source "$file"
done

autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# load every completion after autocomplete loads
for file in ${(M)config_files:#*/completion.zsh}; do
  source "$file"
done

unset config_files updated_at

# Export
export PATH=~/.cargo/bin:$PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:$MONGO_PATH/bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/.yarn/bin:$PATH"

export MONGO_PATH=/usr/local/mongodb
export ANDROID_HOME=$HOME/Library/Android/sdk

source $HOME/.cargo/env
