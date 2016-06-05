#!/usr/bin/env bash

e_header "Installing fonts..."

font_DIR=~/.fonts
find_cmd="find ./ -name '*.[o,t]tf' -type f -print0 "

mkdir -p $font_DIR
eval $find_cmd | xargs -0  -I % cp "%" "$font_DIR/"
fc-cache -f $font_DIR

# install powerline fonts
powerline_DIR=./.powerline_tmp

mkdir -p $powerline_DIR && \
	eval "wget --no-check-certificate -O - https://github.com/powerline/fonts/tarball/master | tar -xzv -C $powerline_DIR --strip-components=1"
. "$powerline_DIR/install.sh"
rm -rf $powerline_DIR


