if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Change terminal color
export PS1=$'\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\n\[\033[m\]\$ '

# bash completion init
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Display computer stats when logged in into shell 
display-screen-info
. "$HOME/.cargo/env"
