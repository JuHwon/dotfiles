#!/bin/bash

export DOTFILES_DIR

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# git
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~


