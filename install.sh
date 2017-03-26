#!/bin/bash
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

# refresh package list
apt-get update

# upgrade git
apt-get install git
apt-get install python
apt-get install cmake
apt-get install build-essential

git config --global user.email dali.licul@gmail.com
git config --global user.name "Dali Licul"

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

nvm install 6.9
