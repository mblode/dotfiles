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

### macOS defaults

You use it by running:

```console
$DOTFILES/macos/set-defaults.sh
```

And logging out and in again.

### iTerm install

In iterm Preferences > General > Load preferences from a custom folder or URL and set it to ~/dotfiles/iterm

### Vim Plug

Open vim, type :PlugInstall to get the latest of all the vim plugins

### Karabiner Hyper-Key

[Hyper Key](http://brettterpstra.com/2017/06/15/a-hyper-key-with-karabiner-elements-full-instructions/)

### Zotero and Ullyses

[Makrdown to word](http://raphaelkabo.com/blog/posts/markdown-to-word/)

### Create a new SSH

[Generate a new SSH](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

### Set ZSH

`chsh -s /bin/zsh`

### MySQL

```
mysql -uroot
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass';
ALTER USER 'yourusername'@'localhost' IDENTIFIED WITH mysql_native_password BY 'youpassword';

```
