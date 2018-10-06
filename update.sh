# Run :PlugUpdate in vim to update plugins. It's too unstable to allow auto updating

# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew update
brew upgrade
brew cleanup

# Update npm & packages
npm install npm -g
npm update -g

# Update yarn & packages
yarn global upgrade

# Update Ruby & gems
sudo gem update —system
sudo gem update

# Update zsh plugins
zplug update
