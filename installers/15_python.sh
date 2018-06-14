
brew install \
  readline \
  xz \
  pyenv
# Python --enable-framework is required for vim completion building
export PYTHON_CONFIGURE_OPTS="--enable-framework"
pyenv install 2.7.10 -s
pyenv install 3.5.0 -s

pyenv global 3.5.0
export PYENV_ROOT=/usr/local/var/pyenv
eval "$(pyenv init -)"

# Python 3.5.0 specific modifications
pyenv shell 3.5.0
pip install --upgrade pip
pip install --user neovim


# Python 2.7.10 specific modifications
pyenv shell 2.7.10
pip install --upgrade pip 
pip install --user neovim
