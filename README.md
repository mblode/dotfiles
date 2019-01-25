# mblode's dotfiles

> Config files for ZSH, Java, Ruby, Go, Editors, Terminals and more.

## Installation

### Dependencies

First, make sure you have all those things installed:

-   `git`: to clone the repo
-   `curl`: to download some stuff
-   `tar`: to extract downloaded stuff
-   `zsh`: to actually run the dotfiles
-   `sudo`: some configs may need that

### Install ZSH

```sh

$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install zsh
$ sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

```

### Install

Then, run these steps:

```console
$ git clone https://github.com/mblode/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ ./script/bootstrap
$ zsh # or just close and open your terminal again.
```

> All changed files will be backed up with a `.backup` suffix.

### Recommended Software

For macOS, I recommend:

-   iTerm: a better terminal emulator;

### macOS defaults

You use it by running:

```console
$DOTFILES/macos/install.sh
```

And logging out and in again.

### iTerm install

In iterm Preferences > General > Load preferences from a custom folder or URL and set it to ~/dotfiles/iterm

### Install Valet

[Valet](https://laravel.com/docs/5.7/valet)

### Karabiner Hyper-Key

[Hyper Key](http://brettterpstra.com/2017/06/15/a-hyper-key-with-karabiner-elements-full-instructions/)

### Zotero and Ullyses

[Makrdown to word](http://raphaelkabo.com/blog/posts/markdown-to-word/)

### Install Vim plugins

[Vim Plug](https://github.com/junegunn/vim-plug)

### Install Ruby with rbenv

[rbenv](https://github.com/rbenv/rbenv)
