if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Change zsh to colorful
autoload -U colors && colors
PS1="%{$fg[green]%}%n%{$reset_color%}@%{$fg[green]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# Fix zsh: no matches found
unsetopt nomatch

# zsh completion init
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# Display computer stats when logged in into shell 
display-screen-info
