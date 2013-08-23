#!/bin/bash
#########
# This script backs up existing dotfiles of the system to a folder and then organize (create symlinks) from the repository
#########

# Variables
dir=~/dotfiles
savedir=~/dotfiles_save/`date "+%s"`
files="vimrc bash_profile gitconfig"
folders="vim"

if [ ! -d $savedir ]; then
    echo "Creating save directory $savedir for backup any existing dotfiles in home"
    mkdir -p $savedir
    echo "$savedir created"
fi

# Moving files existing in $save_dir
for file in $files; do
	if [ -f ~/.$file ]; then
		echo "Moving .$file in $HOME to $savedir for backup"
		mv ~/.$file $savedir/
	fi
	echo "Creating symlink from $dir/$file to $HOME/.$file"
	ln -s $dir/$file ~/.$file
done

for folder in $folders; do
	if [ -d ~/.$folder ]; then
		echo "Moving .$folder folder from $HOME to $savedir for backup"
		mv ~/.$folder $savedir/
	fi
	echo "Creating symlink from $dir/$folder folder to $HOME/.$folder"
	ln -s $dir/$folder ~/.$folder
done
