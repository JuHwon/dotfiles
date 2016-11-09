#!/bin/bash

export DOTFILES_DIR

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Logging stuff.
function e_header()   { echo -e "\n\033[1m$@\033[0m"; }
function e_success()  { echo -e " \033[1;32m✔\033[0m  $@"; }
function e_error()    { echo -e " \033[1;31m✖\033[0m  $@"; }
function e_arrow()    { echo -e " \033[1;34m➜\033[0m  $@"; }

if [[ -x 'command -v apt-get' ]]; then
    source ./init/apt.sh
fi

# source ./install/npm.sh

source ./fonts/install_fonts.sh

# git
ln -sfv "$DOTFILES_DIR/config/.gitconfig" ~

# vimrc
ln -sfv "$DOTFILES_DIR/config/.vimrc" ~


sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

