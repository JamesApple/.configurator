export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
eval "$(direnv hook zsh)"
eval "$(rbenv init -)"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

