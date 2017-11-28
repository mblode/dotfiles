#!/bin/sh

# vim
alias svim='sudo vim'

# yarn
alias yr='yarn'
alias yra='yarn add'
alias yri='yarn install'
alias yrif='yarn install --force'
alias yrl='yarn list'
alias yro='yarn outdated'
alias yrt='yarn init -y'
alias yru='yarn upgrade-interactive'

# npm
alias npi='npm install'
alias npl='npm ls --depth=0'
alias npo='npm outdated'
alias npr='npm run'
alias npt='npm init -y'

# ssh
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '\n\r\033[2K  [ \033[00;32mPublic key copied to pasteboard.\033[0m ] id_rsa.pub\n\n'"

# misc
alias grep="grep --color=auto"
alias less="less -r"
alias dotfilesconfig='e ~/.dotfiles'
alias bashconfig='e ~/.bash_profile'
alias gitconfig='e ~/.gitconfig'
alias hostsfile='e /etc/hosts'

# navigation
alias reload!='exec "$SHELL" -l'
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../../"
alias c="cd ~/"
alias d="cd ~/Desktop"
alias p="cd ~/Projects"
alias dl="cd ~/Downloads"

alias rm='trash'
alias la='ls -A'
alias h='history'

alias g='git'
alias add='git add -A'
alias pull='git push origin HEAD'
alias commit='git commit'
alias push='git push'

# git
alias g='git'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gco='git checkout'
alias gb='git branch'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git commit -a -m'
alias gs='git status -sb'
alias gcb='git copy-branch-name'
alias gm='git merge'

# add git completion to aliases
__git_complete g __git_main
__git_complete gb _git_branch
__git_complete gco _git_checkout
__git_complete gm _git_merge
__git_complete gp _git_push
__git_complete gl _git_pull