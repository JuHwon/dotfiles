#!/bin/bash

export DOTFILES_DIR

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Logging stuff.
function e_header()   { echo -e "\n\033[1m$@\033[0m"; }
function e_success()  { echo -e " \033[1;32m✔\033[0m  $@"; }
function e_error()    { echo -e " \033[1;31m✖\033[0m  $@"; }
function e_arrow()    { echo -e " \033[1;34m➜\033[0m  $@"; }


# git
ln -sfv "$DOTFILES_DIR/config/.gitconfig" ~

# zshrc
ln -sfv "$DOTFILES_DIR/config/.zshrc" ~

# tmux
ln -sfv "$DOTFILES_DIR/tmux/.tmux.conf" ~

