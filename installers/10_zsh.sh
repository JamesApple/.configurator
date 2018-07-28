brew install \
  zsh \
  zsh-syntax-highlighting \
  zsh-completions

# Install marker
mkdir ~/.marker && git clone https://github.com/pindexis/marker ~/.marker && cd ~/.marker && ./install.py
export SHELL=/bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s $(which zsh)
