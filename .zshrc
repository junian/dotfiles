if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Change zsh to colorful
autoload -U colors && colors
PS1="%{$fg[green]%}%n%{$reset_color%}@%{$fg[green]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# Fix zsh: no matches found
unsetopt nomatch

# Docker zsh completion
FPATH="$HOME/.docker/completions:$FPATH"

# zsh completion init
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# disable "r" command (which runs previous executed command) 
# so that it doesnt interfere with the binary for "r" language.
disable r

# Display computer stats when logged in into shell 
display-screen-info

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Created by `pipx` on 2024-04-22 09:40:00
export PATH="$PATH:$HOME/.local/bin"

eval "$(fnm env --use-on-cd --shell zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Added by Windsurf
export PATH="$HOME/.codeium/windsurf/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.lmstudio/bin"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/junian/.dart-cli-completion/zsh-config.zsh ]] && . /Users/junian/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# Added by Antigravity
export PATH="/Users/junian/.antigravity/antigravity/bin:$PATH"
