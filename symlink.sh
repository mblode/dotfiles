#!/bin/bash

# Variables
dir=$DOTFILES/home # dotfiles directory
olddir=$HOME/dotfiles_old # old dotfiles backup directory		
files=".gitconfig .gitignore .hushlogin .vimrc .zshrc .aliases" # list of files/folders to symlink in homedir

# Create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file $olddir/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done