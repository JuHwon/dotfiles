set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ntpeters/vim-better-whitespace'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-syntastic/syntastic'
Plugin 'mtscout6/syntastic-local-eslint.vim'

Bundle 'Powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

syntax on
colorscheme peachpuff
" set background=dark
set number " show line numbers
set wildmenu " shows visual autocomplete
set showmatch " highlights [{()}]

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab " tabs are spaces

set incsearch " search while character is entered
set hlsearch " highlight search matches

" autoremove trailing whitespace
autocmd BufWritePre *.* :%s/\s\+$//e

" copy to macOS clipboard
set clipboard=unnamed

" vim-indent-guides config
" let g:indent_guides_auto_colors = 0
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1
" hi IndentGuidesOdd  ctermbg=black
" hi IndentGuidesEven ctermbg=darkgrey
" let g:indent_guides_enable_on_vim_startup=1

" gitgutter
set updatetime=250

" javascript
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

" powerline config
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2

" nerdtree
map <C-n> :NERDTreeToggle<CR>
