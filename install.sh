#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Setting up your Mac..."

bash $HOME/Dotfiles/homebrew/brew.sh

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# Install global NPM packages
npm install --global yarn
sudo bash $HOME/Dotfiles/yarn/yarn.sh

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Sites

cp git/.gitconfig ~/
cp git/.gitignore ~/
cp macos/.hushlogin ~/
cp vim/.vimrc ~/
cp zsh/.zshrc ~/
cp zsh/.aliases ~/

bash $HOME/Dotfiles/antibody/antibody.sh

open iterm/Atom\ One\ Dark.itermcolors
open terminal/Atom\ One\ Dark.terminal

# Set macOS preferences
# We will run this last because this will reload the shell
bash $HOME/Dotfiles/macos/.macos