# dotfiles

My personal dotfiles collection. Intended to be used on macOS system, but some parts should be able to be used on \*nix-based system.

Before using anything, install it first by typing this command:

```bash
$ ./install.sh
```

## What's Inside?

Since I'm using MacBook Pro as main machine, these files work effectively on macOS. But some of it can be used to any \*nix system.

`.vimrc` file to make your vim experience better. It's pretty basic though, but will be better soon.

Alias is used to wrap a long command or any other command into one command. It's defined in `.aliases`.

Some handful bash functions is defined in `.functions`.

If you're using [homebrew](https://brew.sh) as your package manager, which I suggest you should, it's better to use `Brewfile` so you can have the same packages across machines.

Every initial terminal function is defined in `.bashrc`. It is linked from `.bash_profile` since macOS only recognize `.bash_profile`.

Batman logo in ASCII, you can take a look at `.batman` file. You can use it as your welcome message on your terminal. I found it online and I forgot the source. I'll update this when I found it.

## License

This work is licensed under [Public Domain / Unlicense](https://github.com/junian/dotfiles/blob/master/LICENSE). Which mean you can do whatever you want with it for free, personal or commercial purpose, with or without attribution.
