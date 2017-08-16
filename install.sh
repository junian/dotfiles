#!/bin/bash

echo "Installing dotfiles to home";
echo "Creating symlinks of dotfiles";

ln -sv $PWD/.functions $HOME
ln -sv $PWD/.vimrc $HOME
ln -sv $PWD/.aliases $HOME
ln -sv $PWD/.bash_profile $HOME

echo "Finished symlinking all dotfiles. Restart your shell terminal to take effect.";
