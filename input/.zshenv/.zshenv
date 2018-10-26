export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Add custom aliases
source ~/.aliases

# Prevent nesting of vim instances
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
  if [ -x "$(command -v nvr)" ]; then
    alias nvim=nvr
  else
    alias nvim='echo "No nesting!"'
  fi
fi

# Quickfix pyenv
export PYTHON_CONFIGURE_OPTS="--enable-framework"
export PYENV_ROOT=/usr/local/var/pyenv

# Trying zsh completion in vim
zmodload zsh/zpty
