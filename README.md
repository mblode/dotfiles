# mblode's dotfiles
### Install
```
chsh -s $(which zsh)
git clone https://github.com/mblode/dotfiles.git
cd ~/dotfiles
make
git submodule init 
git submodule update
brew install rbenv
rbenv init
```