#!/bin/bash

echo "Setting up your Mac..."

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Symlink
bash $DOTFILES/symlink.sh

# Brew
bash $DOTFILES/etc/brew.sh

# Install Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# Install global NPM packages
npm install --global yarn
sudo bash $DOTFILES/etc/yarn.sh

# Antibody
bash $DOTFILES/etc/antibody.sh

# VSCode
bash $DOTFILES/etc/vscode.sh

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Sites

open $DOTFILES/etc/Atom\ One\ Dark.itermcolors
open $DOTFILES/etc/Atom\ One\ Dark.terminal

# Set macOS preferences
# We will run this last because this will reload the shell
bash $DOTFILES/etc/macos.sh