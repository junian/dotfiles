<div align="center">
  
# dotfiles

My personal dotfiles collection. Intended to be used on the macOS system, but some parts should be able to be used on \*nix-based systems.

</div>

## Installation

- Clone this repository to `$HOME` folder.
  ```bash
  git clone git@github.com:junian/dotfiles.git ~/.dotfiles
  ```
- Before using anything, install it first by typing this command:
  ```bash
  cd ~/.dotfiles/
  ./install.sh
  ```

## Vim Plugins Setup

- Install `vim`. If you're on macOS, I recommend MacVim:
  ```bash
  brew install macvim-app
  ```
- Install Vundle for vim plugins
  ```bash
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  ```
- Open `vim` from Terminal
- Press <kbd>ESC</kbd> and type `:PluginInstall`
- Press <kbd>ENTER</kbd> and wait unti finished
- Once finished or `Done!`, press <kbd>ESC</kbd>, type `:q`, then press <kbd>ENTER</kbd>

## What's Inside?

Since I'm using a MacBook Air M1 as the main machine, these files work effectively on macOS. But some of it can be used for any \*nix system.

`.vimrc` file to make your Vim experience better. It's pretty basic though, but will be better soon.

Alias is used to wrap a long command or any other command into one command. It's defined in `.aliases`.

Some handful bash functions are defined in `.functions`.

If you're using [homebrew](https://brew.sh) as your package manager, which I suggest you should, it's better to use `Brewfile` so you can have the same packages across machines.

Every initial terminal function is defined in `.bashrc`. It is linked from `.bash_profile` since macOS only recognizes `.bash_profile`.

Batman logo in ASCII, you can take a look at the `.batman` file. You can use it as your welcome message on your terminal. I found it online and I forgot the source. I'll update this when I find it.

## License

This work is licensed under [Public Domain / Unlicense](https://github.com/junian/dotfiles/blob/master/LICENSE). This means you can do whatever you want with it for free, personal or commercial purposes, with or without attribution.
