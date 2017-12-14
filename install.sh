#!/bin/bash

export DOTFILES_DIR

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Logging stuff.
function e_header()   { echo -e "\n\033[1m$@\033[0m"; }
function e_success()  { echo -e " \033[1;32m✔\033[0m  $@"; }
function e_error()    { echo -e " \033[1;31m✖\033[0m  $@"; }
function e_arrow()    { echo -e " \033[1;34m➜\033[0m  $@"; }

if [[ -x 'command -v apt-get' ]]; then
    . $DOTFILES_DIR/init/apt.sh
fi

. $DOTFILES_DIR/fonts/install_fonts.sh

# git
curl https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight \
    > /usr/local/bin/diff-highlight \
    && chmod +x /usr/local/bin/diff-highlight
ln -sfv "$DOTFILES_DIR/config/.gitconfig" ~

# vimrc
ln -sfv "$DOTFILES_DIR/config/.vimrc" ~

# tmux
ln -sfv "$DOTFILES_DIR/tmux/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/tmux/.tmux.ide.conf" ~

#zsh
echo "Which zsh config you want to use?"
echo "[1] Oh My Zsh"
echo "[2] Zim"
echo "[n/N] None"

while true; do
  read -p "Choose: " answer
  case $answer in
    [1]* ) . "$DOTFILES_DIR/install/oh-my-zsh.sh"; break;;
    [2]* ) . "$DOTFILES_DIR/install/zim.sh"; break;;
    [Nn]* ) break;;
    * ) echo "Please type in a valid answer.";;
  esac
done


