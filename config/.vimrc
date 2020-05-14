unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set number "show line numbers
set wildmenu "show visual autocomplete
set showmatch "highlights [{()}]

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab "tabs are spaces

set incsearch "search while character is entered
set hlsearch "highlight search matches

"autoremove trailing whitespace
autocmd BufWritePre *.* :%s/\s\+$//e

"copy to macOS clipboard
set clipboard=unnamed



