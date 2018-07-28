
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jamesapple/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jamesapple/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jamesapple/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jamesapple/google-cloud-sdk/completion.zsh.inc'; fi


# PATH="/Users/jamesapple/Library/Python/3.6/bin:${PATH}"
# PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

export PATH
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



export PYENV_ROOT=~/.pyenv
export PATH=$PYENV_ROOT/shims:$PATH
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

