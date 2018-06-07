# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update && \
  brew tap homebrew/cask && \
  brew tap homebrew/cask-versions

brew install \
  git \
  httpie \
  wget \
  neovim \
  gpg2 \
  coreutils \
  findutils \
  wget \
  curl \

brew cask install \
  google-chrome \
  spotify \
  vlc \
  alfred \
  dash \
  docker \
  virtualbox \
  vagrant \
  timing \
  iterm2 \
  spotify \
  timing \
  slack

