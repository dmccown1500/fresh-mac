#!/bin/sh

# bash-completion
brew install bash-completion

BASH_COMPLETION_LINE='[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"'

if [ -f ~/.bash_profile ]; then
  if ! grep -qF -- "$BASH_COMPLETION_LINE" ~/.bash_profile; then
    echo "Adding $BASH_COMPLETION_LINE to your ~./bash_profile"
    echo "$BASH_COMPLETION_LINE" >>~/.bash_profile
  fi
else
  touch ~/.bash_profile
  echo "Adding $BASH_COMPLETION_LINE to your ~./bash_profile"
  echo "$BASH_COMPLETION_LINE" >~/.bash_profile
fi
