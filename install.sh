#!/bin/bash

echo "Installing dotfiles to home";
echo "Creating symlinks of dotfiles";

for file in .{functions,aliases,vimrc,bashrc,bash_profile,tmux.conf}; do
    if [ -r "$PWD/$file" ] && [ -f "$PWD/$file" ]; then
	    rm "$HOME/$file";
	    ln -sv "$PWD/$file" $HOME;
    fi;
done;
unset file;

for file in {Brew,Gem}file; do
    if [ -r "$PWD/$file" ] && [ -f "$PWD/$file" ]; then
	    rm "$HOME/.${file}";
	    ln -sv "$PWD/$file" "$HOME/.${file}";
    fi;
done;
unset file;

rm "$HOME/.config/mpv/mpv.conf"
ln -sv "$PWD/mpv.conf" "$HOME/.config/mpv"

echo "Finished symlinking all dotfiles. Restart your shell terminal to take effect.";
