brew update
brew install nvm
mkdir ~/.nvm

LINE1='export NVM_DIR="$HOME/.nvm"'
LINE2='[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm'
LINE3='[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion" # This loads nvm bash_completion'

if [ -f ~/.zshrc ]; then
    if ! grep -qF -- "$LINE1" ~/.zshrc; then
        echo "$LINE1" >>~/.zshrc
        echo "$LINE2" >>~/.zshrc
        echo "$LINE3" >>~/.zshrc
    fi
else
    touch ~/.zshrc
    echo "$LINE1" >~/.zshrc
    echo "$LINE2" >>~/.zshrc
    echo "$LINE3" >>~/.zshrc
fi
