#!/bin/sh

brew update
brew install git
sh ./install_nvm.sh
sh ./install_rvm.sh
brew install cask
brew cask install visual-studio-code
brew cask install firefox
brew cask install google-chrome
brew cask install spectacle
brew cask install spotify
brew cask install slack
brew cask install aerial
brew cask install docker
brew cask install virtualbox
