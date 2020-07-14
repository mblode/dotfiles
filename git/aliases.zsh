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
alias gs='git status -sb'
alias gcb='git copy-branch-name'
alias gm='git merge'

alias gmp='git push origin master && git push origin master:production'
alias gms='git push origin master && git push origin master:staging'
alias gmsp='git push origin master && git push origin master:staging && git push origin master:production'
