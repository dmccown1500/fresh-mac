brew update
brew install nvm
mkdir ~/.nvm

LINE='export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh'

if [ -f ~/.bash_profile ]; then
    grep -qF -- "$LINE" ~/.bash_profile || echo "$LINE" >> ~/.bash_profile
else
    touch ~/.bash_profile
    echo "$LINE" > ~/.bash_profile
fi