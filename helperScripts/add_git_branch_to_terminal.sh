#!/bin/sh

LINE1="parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}"

LINE2='export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "'

if ! grep -qF -- "$LINE2" ~/.bash_profile; then
  echo "Adding $LINE1 & $LINE2 to your ~./bash_profile"
  echo "$LINE1" >>~/.bash_profile
  echo "$LINE2" >>~/.bash_profile
else
  echo "$LINE1 is already in ~/.bash_profile"
fi
