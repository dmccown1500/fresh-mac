#!/bin/zsh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

 echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/mccownda/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"