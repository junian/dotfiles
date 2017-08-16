# Load the shell dotfiles, and then some:
for file in ~/.{aliases,functions,myfunctions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add /usr/local/sbin to PATH used by Homebrew
export PATH="/usr/local/sbin:$PATH"

# Add composer to PATH
export PATH="/Users/junian/.composer/vendor/bin:$PATH"

# Add GOPATH and add it into PATH
export GOPATH=$HOME/.gowork
export PATH=$PATH:$GOPATH/bin

