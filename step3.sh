#!/bin/sh

brew update
brew install git
sh ./helperScripts/install_nvm.sh
sh ./helperScripts/install_rvm.sh
sh ./helperScripts/add_git_branch_to_terminal.sh
sh ./helperScripts/install_bash_completion.sh
brew install --cask visual-studio-code
brew install --cask spectacle
brew install --cask spotify
brew install --cask slack
brew install --cask aerial
brew install --cask docker
brew install --cask zoom
brew install --cask webex-meetings