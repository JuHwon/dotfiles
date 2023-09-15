
# history
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# Completion
setopt auto_menu
setopt always_to_end
setopt complete_in_word
unsetopt flow_control
unsetopt menu_complete
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

# Settings for pasting URLs with params in terminal
autoload -Uz url-quote-magic
autoload -Uz bracketed-paste-magic
autoload -Uz bracketed-paste-url-magic
zle -N self-insert url-quote-magic
zle -N bracketed-paste bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-url-magic


# init zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# zplug plugins
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3


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

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '\e[7~' beginning-of-line
bindkey '\e[8~' end-of-line

# Alias
#alias -g ls="ls -G"
#alias -g ll="ls -laG"

# Variables
export EDITOR=vim

# grep colors
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;30;40'

# export PATH="/usr/local/opt/node@14/bin:$PATH"
# export PATH="/usr/local/opt/node@18/bin:$PATH"

source $(brew --prefix nvm)/nvm.sh

alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3

