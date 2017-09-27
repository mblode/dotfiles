# mblode's dotfiles
### Install
```
chsh -s $(which zsh)
git clone https://github.com/mblode/dotfiles.git
cd ~/dotfiles
curl -L git.io/antigen > antigen.zsh
make
brew install rbenv
rbenv init
sudo npm install --global trash-cli
```