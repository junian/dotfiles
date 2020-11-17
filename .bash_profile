if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# bash completion init
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Display computer stats when logged in into shell 
display-screen-info
