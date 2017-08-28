# Load the shell dotfiles, and then some:
for file in ~/.{aliases,functions,myaliases,myfunctions}; do
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

# Add GOROOT path
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Set ANDROID_HOME
export ANDROID_HOME=/Users/junian/sdk/android-sdk

# opt out dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# yarn
export PATH="$HOME/.yarn/bin:$PATH"

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# disable brew analytics
export HOMEBREW_NO_ANALYTICS=1

# iTerm integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# 256 color terminal
export TERM=xterm-256color

# Add JAVA paths
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home"
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xms1024m -Xmx2048m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC"

# nvm
export NVM_DIR="/Users/junian/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
eval $(/usr/libexec/path_helper -s)
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/junian/.sdkman"
[[ -s "/Users/junian/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/junian/.sdkman/bin/sdkman-init.sh"

