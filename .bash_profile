if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Display computer stats when logged in into shell 
if command -v archey >/dev/null 2>&1; then
    archey --offline
elif command -v screenfetch >/dev/null 2>&1; then
    screenfetch -E -d '+disk'
fi

