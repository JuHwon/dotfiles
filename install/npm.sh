#!/bin/bash

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash

nvm install 4.4.4
nvm use 4.4.4


# Globally install with npm

packages=(
	gulp
	nodemon
	bower
)

npm install -g "${packages[@]}"
