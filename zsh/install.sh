#!/bin/sh

set -e

ZSH_DIR="$HOME/.zsh"
mkdir -p "$ZSH_DIR"

clone_or_pull() {
  repo="$1"
  dest="$ZSH_DIR/$(basename "$repo")"
  if [ -d "$dest" ]; then
    git -C "$dest" pull --quiet
  else
    git clone "$repo" "$dest"
  fi
}

clone_or_pull https://github.com/Aloxaf/fzf-tab
clone_or_pull https://github.com/zsh-users/zsh-autosuggestions
clone_or_pull https://github.com/zsh-users/zsh-completions
clone_or_pull https://github.com/zsh-users/zsh-syntax-highlighting
clone_or_pull https://github.com/zsh-users/zsh-history-substring-search
