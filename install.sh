#!/bin/bash

echo "Installing dotfiles to home";
echo "Creating symlinks of dotfiles";

ln -sv $PWD/.functions $HOME
ln -sv $PWD/.vimrc $HOME

echo "Finished symlinking all dotfiles. Restart your shell terminal to take effect.";
