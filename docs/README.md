# dotfiles

My personal dotfiles collection. Intended to be used on the macOS system, but some parts should be able to be used on \*nix-based systems.

Before using anything, install it first by typing this command:

```bash
$ ./install.sh
```

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
