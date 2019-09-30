export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH=${HOME}/go/bin:$PATH
eval "$(direnv hook zsh)"
eval "$(rbenv init -)"
eval "$(pyenv init -)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"


export PATH=~/maven/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_212.jdk/Contents/Home

#
# Fix for gopls raising in vim. TODO: Actually fix it
# https://github.com/alecthomas/gometalinter/issues/149
export CGO_ENABLED=0

# GCP
# CHANGE FOR COMPUTER!

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jamesapple/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jamesapple/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jamesapple/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jamesapple/google-cloud-sdk/completion.zsh.inc'; fi
