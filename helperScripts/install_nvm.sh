brew update
brew install nvm
mkdir ~/.nvm

LINE1='export NVM_DIR="$HOME/.nvm"'
LINE2='[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm'
LINE3='[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion" # This loads nvm bash_completion'

if [ -f ~/.bash_profile ]; then
    if ! grep -qF -- "$LINE1" ~/.bash_profile; then
        echo "$LINE1" >>~/.bash_profile
        echo "$LINE2" >>~/.bash_profile
        echo "$LINE3" >>~/.bash_profile
    fi
else
    touch ~/.bash_profile
    echo "$LINE1" >~/.bash_profile
    echo "$LINE2" >>~/.bash_profile
    echo "$LINE3" >>~/.bash_profile
fi
