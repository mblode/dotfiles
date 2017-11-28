#!/bin/sh
alias g='git'
alias add='git add -A'
alias pull='git push origin HEAD'
alias commit='git commit'
alias push='git push'

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