#!/bin/sh

# navigation
alias reload!='exec '$SHELL' -l'
alias ~='cd ~/'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
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
alias gpoh='git push origin HEAD'
alias gpom='git push origin main'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias gd='git diff'
alias gco='git checkout'
alias gcm='git checkout main'
alias gb='git branch'
alias gc='git commit'
alias gcmsg='git commit -m'
alias gca='git commit -a'
alias gcam='git commit -a -m'
alias gcb='git copy-branch-name'
alias grm='git fetch origin main && git rebase origin/main'

# Node

# NPM
alias npi='npm install'
alias npl='npm ls --depth=0'
alias npo='npm outdated'
alias npr='npm run'
alias npw='npm run watch'
alias npp='npm run prod'
alias npt='npm init -y'

alias vn="cd '$NOTES' && $EDITOR ."
alias vs="cd '$DOTFILES' && $EDITOR 'vim/vimrc.symlink'"
alias vj="cd '$NOTES' && $EDITOR vim.md"

mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

alias mc='mkcdir'

alias code="zed"

alias cc="claude --dangerously-skip-permissions"
alias co="codex --dangerously-bypass-approvals-and-sandbox"
