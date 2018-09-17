#!/bin/sh

brew install git bash-completion

LINE='if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi'
if [ -f ~/.bash_profile ]; then
    grep -qF -- "$LINE" ~/.bash_profile || echo "$LINE" >> ~/.bash_profile
else
    touch ~/.bash_profile
    echo "$LINE" > ~/.bash_profile
fi