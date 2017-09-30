#!/bin/bash

# Homebrew

# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi
fi

brew tap homebrew/homebrew-php
brew update
brew upgrade

# Install packages
brew install antibody
brew install tmux
brew install wget
brew install git
brew unlink php56
brew install php70
brew install tree
brew install imagemagick
brew install watchman

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Basic brew packages are installed."

# Cask
brew tap caskroom/cask

# Install cask packages
brew cask install --appdir="~/Applications" mamp
brew cask install --appdir="~/Applications" 1password
brew cask install --appdir="~/Applications" alfred
brew cask install --appdir="~/Applications" codekit
brew cask install --appdir="~/Applications" framer
brew cask install --appdir="~/Applications" nvalt
brew cask install --appdir="~/Applications" rescuetime
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" torbrowser
brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" slack
brew cask install --appdir="~/Applications" spotify
brew cask install --appdir="~/Applications" sequel-pro
brew cask install --appdir="~/Applications" the-unarchiver
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" sketch
brew cask install --appdir="~/Applications" google-backup-and-sync
brew cask install --appdir="~/Applications" imageoptim
brew cask install --appdir="~/Applications" karabiner-elements

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew additional applications are installed."