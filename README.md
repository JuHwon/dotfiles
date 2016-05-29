# dotfiles

> Still under construction.

## Install

Install the dotfiles with either Git, curl or wget:

### Clone with Git

    git clone https://github.com/juhwon/dotfiles.git
    source dotfiles/install.sh

### Remotely install using curl

Alternatively, you can install this into `~/.dotfiles` remotely without Git using curl:

    bash -c "`curl -fsSL https://raw.github.com/juhwon/dotfiles/master/remote-install.sh`"

Or, using wget:

    bash -c "`wget -O - --no-check-certificate https://raw.githubusercontent.com/juhwon/dotfiles/master/remote-install.sh`"