if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Display computer stats when logged in into shell 
if command -v archey >/dev/null 2>&1; then
    archey --offline
elif command -v screenfetch >/dev/null 2>&1; then
    screenfetch -E -d '+disk'
fi

