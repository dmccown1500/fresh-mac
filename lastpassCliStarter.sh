#!/bin/sh

#login if not currently logged in
lpass status
LOGGED_IN=$?
if [ $LOGGED_IN != 0 ]; then
  lpass login --trust daniel.mccown@gmail.com
fi

PASS=$(lpass show --password {insert_site_here} 2>&1)
USER=$(lpass show --username {insert_site_here} 2>&1)

# do something with them for example
echo $PASS |  https://vpn.YOUR-INSTITUTE-HOST/ -u $USER --passwd-on-stdin
SUCCESS=$?
if [ SUCCESS = 0 ]; then
    echo 'Logged in to vpn as ' $USER
else
    echo 'Failed to login'
fi

