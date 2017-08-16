# Load the shell dotfiles, and then some:
for file in ~/.{aliases,functions,myfunctions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
