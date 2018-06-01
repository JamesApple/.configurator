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

brew cask install \
  google-chrome \
  spotify \
  vlc \
  alfred \
  dash


