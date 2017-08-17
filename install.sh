#!/bin/bash

echo "Installing dotfiles to home";
echo "Creating symlinks of dotfiles";

for file in .{functions,aliases,vimrc,bashrc,bash_profile}; do
    if [ -r "$PWD/$file" ] && [ -f "$PWD/$file" ]; then
	    rm "$HOME/$file";
	    ln -sv "$PWD/$file" $HOME;
    fi;
done;
unset file;

echo "Finished symlinking all dotfiles. Restart your shell terminal to take effect.";
