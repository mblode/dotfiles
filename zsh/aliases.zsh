#!/bin/sh

# navigation
alias reload!='exec '$SHELL' -l'
alias ~='cd ~/'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias c='cd ~/'
alias d='cd ~/Downloads'
alias s='cd ~/Code'

alias c='clear'
alias h='history'

alias rr="rm -rf"

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

alias v='nvim'

# Git

alias g='git'
alias ga='git add -A'
alias gp='git push'
alias gpoh='git push origin HEAD'
alias gpom='git push origin master'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git commit -a -m'
alias gcb='git copy-branch-name'

# Node

# Yarn
alias yr='yarn'
alias yra='yarn add'
alias yri='yarn install'
alias yrif='yarn install --force'
alias yrl='yarn list'
alias yro='yarn outdated'
alias yrt='yarn init -y'
alias yru='yarn upgrade-interactive'

# NPM
alias npi='npm install'
alias npl='npm ls --depth=0'
alias npo='npm outdated'
alias npr='npm run'
alias npw='npm run watch'
alias npp='npm run prod'
alias npt='npm init -y'
alias npc='npm-check --skip-unused -u'

# LS
alias ls='exa'
alias l='exa --group-directories-first'
alias ll='exa -lg --group-directories-first'
alias la='exa -lag --group-directories-first'
alias lm='exa -lgs modified --group-directories-first'
alias lmr='exa -lgs modified --group-directories-first --reverse'

# TMUX

alias tma='tmux a -t'
alias tmn='tmux new -s'

alias vn="cd '$NOTES' && $EDITOR ."
alias vs="cd '$DOTFILES' && $EDITOR 'vim/vimrc.symlink'"
alias vj="cd '$NOTES' && $EDITOR vim.md"

mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

alias mc='mkcdir'
