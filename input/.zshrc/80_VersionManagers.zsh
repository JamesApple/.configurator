

# PATH="/Users/jamesapple/Library/Python/3.6/bin:${PATH}"
# PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
eval "$(direnv hook zsh)"
eval "$(rbenv init -)"

export PYENV_ROOT=~/.pyenv
export PATH=$PYENV_ROOT/shims:$PATH
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

