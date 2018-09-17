#!/bin/sh

brew install bash-completion

LINE='[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion'
if [ -f ~/.bash_profile ]; then
    grep -qF -- "$LINE" ~/.bash_profile || echo "$LINE" >> ~/.bash_profile
else
    touch ~/.bash_profile
    echo "$LINE" > ~/.bash_profile
fi