
# init zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# zplug plugins
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

#prompt
eval "$(starship init zsh)"


# Alias
alias -g ls="ls -G"
alias -g ll="ls -laG"



export PATH="/usr/local/opt/node@12/bin:$PATH"



