#!/bin/bash
############################
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir="."                       # dotfiles directory (this repository)
olddir=~/dotfiles_old         # old dotfiles backup directory
files="bashrc vimrc zshrc"    # list of files/folders to symlink in homedir

##########

# https://stackoverflow.com/questions/18544359/how-to-read-user-input-into-a-variable-in-bash
read -p "If you want to override current dotfile? ([Y]es/[B]ackup/[N]o): " confirm

if [[ ${confirm^^} == 'YES' || $confirm == [Yy] ]]; then
    echo "Override the dotfiles"

    for file in $files; do
        echo "Copying $file to home directory."
        cp $dir/$file ~/.$file
    done
elif [[ ${confirm^^} == 'BACKUP' || $confirm == [Bb] ]]; then
    echo "Backup and Update the dotfiles"

    # create dotfiles_old in homedir
    echo "Creating $olddir for backup of any existing dotfiles in ~"
    mkdir -p $olddir
    echo "...done"

    # move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
    for file in $files; do
        echo "Moving any existing dotfiles from ~ to $olddir"
        mv ~/.$file ~/dotfiles_old/
        # echo "Creating symlink to $file in home directory."
        # ln -s $dir/$file ~/.$file
        # echo "Creating link to $file in home directory."
        # ln $dir/$file ~/.$file
        echo "Copying $file to home directory."
        cp $dir/$file ~/.$file
    done
fi
