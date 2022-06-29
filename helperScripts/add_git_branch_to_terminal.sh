#!/bin/sh

mkdir ~/.zshConfig
cd ~/.zshConfig
git clone https://github.com/zsh-git-prompt/zsh-git-prompt.git

LINE1="source ~/.zshConfig/zsh-git-prompt/zshrc.sh

"

LINE2="PROMPT='%B%m%~%b$(git_super_status) %# '"

if ! grep -qF -- "$LINE2" ~/.zshrc; then
  echo "Adding $LINE1 & $LINE2 to your ~/.zshrc"
  echo "$LINE1" >>~/.zshrc
  echo "$LINE2" >>~/.zshrc
else
  echo "$LINE1 is already in ~/.zshrc"
fi
