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
brew cask install mamp
brew cask install 1password
brew cask install alfred
brew cask install codekit
brew cask install framer
brew cask install nvalt
brew cask install rescuetime
brew cask install vlc
brew cask install torbrowser
brew cask install google-chrome
brew cask install slack
brew cask install spotify
brew cask install sequel-pro
brew cask install the-unarchiver
brew cask install iterm2
brew cask install sketch
brew cask install google-backup-and-sync
brew cask install imageoptim
brew cask install karabiner-elements
brew cask install firefox
# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew additional applications are installed."