#!/bin/sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install git
brew install node
brew install cask
brew cask install visual-studio-code
brew cask install google-chrome
brew cask install spectacle
brew cask install spotify
brew cask install slack
brew cask install lastpass
brew cask install docker
