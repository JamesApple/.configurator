export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
eval "$(direnv hook zsh)"
eval "$(rbenv init -)"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# GCP
# CHANGE FOR COMPUTER!

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jamesapple/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jamesapple/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jamesapple/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jamesapple/google-cloud-sdk/completion.zsh.inc'; fi
