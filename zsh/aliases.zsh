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

alias rr="trash"

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

alias v='nvim'

# Git

alias g='git'
alias ga='git add -A'
alias gp='git push'
alias gup='git push'
alias gpoh='git push origin HEAD'
alias gpom='git push origin master'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias gd='git diff'
alias gco='git checkout'
alias gcm='git checkout master'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git commit -a -m'
alias gcb='git copy-branch-name'
alias grm='git fetch origin master && git rebase origin/master'

# Git for Mr Yum

alias gmy='gcm && gup && gco - && grbm'

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

alias vn="cd '$NOTES' && $EDITOR ."
alias vs="cd '$DOTFILES' && $EDITOR 'vim/vimrc.symlink'"
alias vj="cd '$NOTES' && $EDITOR vim.md"

mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

alias mc='mkcdir'

alias dn='docker compose up -d nginx'
alias ys1='yarn start:web'
alias ys2='yarn start:admin'
alias ysg='APP_ENV=staging yarn start:web'
alias ysgp='APP_ENV=preview yarn start:web'
alias ysm='APP_ENV=staging yarn start:admin'
alias ysmp='APP_ENV=preview yarn start:admin'
alias yg='yarn generate'
alias yl='yarn workspaces foreach --include=@mr-yum/core --include=@mr-yum/ui -tv run build'
alias yt='yarn typecheck'
alias ydm='NEST_SCRIPTS_ALLOW_CIRCULAR_DEPENDENCIES=true MANAGE_MODES=manage-api yr nest-scripts develop'