#!/bin/bash
e_header "Installing nvm"

NVM_DIR=$HOME"/.nvm"

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

nvm install 4.4.4
nvm use 4.4.4
nvm alias default 4.4.4


# Globally install with npm
packages=(
	gulp
	nodemon
	bower
)

e_header "Installing global npm packages ${packages[*]}"

npm install -g "${packages[@]}"
