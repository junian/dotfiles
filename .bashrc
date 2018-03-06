# Load the shell dotfiles, and then some:
for file in ~/.{aliases,functions,myaliases,myfunctions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add /usr/local/sbin to PATH used by Homebrew
export PATH="/usr/local/sbin:$PATH"

# Add composer to PATH
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Add GOPATH and add it into PATH
export GOPATH=$HOME/.gowork
export PATH=$PATH:$GOPATH/bin

# Add GOROOT path
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Set ANDROID_HOME
export ANDROID_HOME=$HOME/sdk/android-sdk

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

export FREETYPE_PROPERTIES="truetype:interpreter-version=35"

LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
  . $LUNCHY_DIR/lunchy-completion.bash
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
eval $(/usr/libexec/path_helper -s)
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;
