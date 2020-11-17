if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# zsh completion init
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# Display computer stats when logged in into shell 
display-screen-info
