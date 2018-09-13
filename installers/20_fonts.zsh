brew tap caskroom/fonts
brew cask install font-fira-code

git clone https://github.com/powerline/fonts.git $HOME/code/fonts
cd $HOME/code/fonts && ./install.sh

# Register italic $TERM types
tic ~/.conf-support/xterm-256color-italic.terminfo
tic ~/.conf-support/screen-256color-italic.terminfo
