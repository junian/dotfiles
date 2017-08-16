#!/bin/bash

echo "Installing dotfiles to home";
echo "Creating symlinks of dotfiles";

for file in .{functions,aliases,vimrc,bash_profile}; do
    [ -r "$PWD/$file" ] && [ -f "$PWD/$file" ] && rm "$HOME/$file" && ln -sv "$PWD/$file" $HOME;
done;
unset file;

echo "Finished symlinking all dotfiles. Restart your shell terminal to take effect.";
