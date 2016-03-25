# UTILITY

alias less='less -R'
alias grep='grep --color=auto'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# GIT

alias g='git'
alias gd='git diff'
alias gco='git checkout'
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gpp='git pull; git push'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

# SOURCE CUSTOM ALIASES

if [[ -f $slim_path/aliases.zsh.local ]]; then
  source $slim_path/aliases.zsh.local
fi

alias l="ls -lF ${colorflag}"
alias la="ls -laF ${colorflag}"

alias update='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update'

alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

alias reload="exec $SHELL -l"
