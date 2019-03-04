#!/bin/sh

brew update
brew install git
sh ./helperScripts/install_nvm.sh
sh ./helperScripts/install_rvm.sh
sh ./helperScripts/add_git_branch_to_terminal.sh
sh ./helperScripts/install_bash_completion.sh
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
