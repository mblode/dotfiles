# mblode's dotfiles

## What's inside

- Git
- Homebrew
- iTerm 2
- Hyper Key for Karabiner Elements
- Mac OS defaults
- SSH
- Terminal
- Valet
- Vim
- VS Code
- Yarn
- zsh

### Install dotfiles

Then, run these steps:

```sh

$ git clone https://github.com/mblode/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ ./script/bootstrap
$ zsh # or just close and open your terminal again.

```

### iTerm install

In iterm Preferences > General > Load preferences from a custom folder or URL and set it to ~/dotfiles/iterm

### Vim Plug

Open vim, type :PlugInstall to get the latest of all the vim plugins

### Create a new SSH

[Generate a new SSH](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

### MacOS

```
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
killall Dock

defaults write com.apple.screencapture show-thumbnail -bool false
defaults write com.apple.screencapture location ~/Downloads
killall SystemUIServer

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
```
