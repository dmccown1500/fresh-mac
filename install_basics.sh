#!/bin/sh

brew update
brew install git
brew install node
sh ./install_nvm.sh
brew install cask
brew install lastpass-cli --with-pinentry
brew cask install visual-studio-code
brew cask install firefox
brew cask install google-chrome
brew cask install spectacle
brew cask install spotify
brew cask install slack
brew cask install aerial
brew cask install docker
brew cask install virtualbox

