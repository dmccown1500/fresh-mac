#!/bin/zsh

ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
echo 'A ssh key has been created and the public key has been copied into your clipboard. Go to https://github.com/settings/ssh/new and paste this in the key field to add this computer to your trusted computers.'
cat ~/.ssh/id_rsa.pub | pbcopy
