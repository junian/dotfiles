export CLICOLOR=1

if [[ "$(uname -m)" == "arm64" ]]
then
    # Homebrew init install ARM64
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    # Homebrew init install X86_64
    eval "$(/usr/local/bin/brew shellenv)"
fi

# Add ssh-copy-id from Brew
export PATH="/opt/homebrew/opt/ssh-copy-id/bin:$PATH"

# Add android platform-tools like adb
export PATH="/opt/homebrew/share/android-commandlinetools/platform-tools:$PATH"

# Load the shell dotfiles, and then some:
for file in ~/.{aliases,functions,myenv,myaliases,myfunctions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Created by `pipx` on 2024-04-22 09:40:00
export PATH="$PATH:$HOME/.local/bin"

# For dotnet tools
export PATH="$PATH:$HOME/.dotnet/tools"

# Add mysql client from brew
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Add ruby from Brew
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Add python from Brew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Add curl-openssl from Brew
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"

# Add openssl from Brew
export PATH="/usr/local/opt/openssl/bin:$PATH"

# Add qt from Brew
export PATH="/usr/local/opt/qt/bin:$PATH"

# Add gnu-getopt from Homebrew
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# Add /usr/local/sbin to PATH used by Homebrew
export PATH="/usr/local/sbin:$PATH"

# Add composer to PATH
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Add GOPATH and add it into PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Add GOROOT path
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Set ANDROID_HOME
export ANDROID_HOME="/opt/homebrew/share/android-commandlinetools"

export ANDROID_SDK_ROOT="/opt/homebrew/share/android-commandlinetools"

export ANDROID_NDK_HOME="$ANDROID_HOME/ndk-bundle"

# Android platform tools (e.g. adb, fastboot)
export PATH="$ANDROID_HOME/platform-tools:$PATH"

# opt out dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# yarn
export PATH="$HOME/.yarn/bin:$PATH"

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# mono registry
export MONO_REGISTRY_PATH=~/.mono/registry

export PATH="/usr/local/miniconda3/bin:$PATH"

# Install gem without sudo
# From CocoaPods sudo-less installation
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
#export PATH=`gem env gemdir`/bin:$PATH

# disable brew analytics
export HOMEBREW_NO_ANALYTICS=1

# iTerm integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# 256 color terminal
export TERM=xterm-256color

# Add JAVA paths
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home"
export JAVA_HOME=$(/usr/libexec/java_home)
# export JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xms1024m -Xmx2048m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC"

export FREETYPE_PROPERTIES="truetype:interpreter-version=35"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

export PATH="$HOME/.docker/bin:$PATH"
export PASSWORD_STORE_GPG_OPTS=--armor

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
