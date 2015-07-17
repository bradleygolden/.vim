set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add plugins below this line
Plugin 'bling/vim-airline' " status bar
Plugin 'tpope/vim-fugitive' " git in vim
Plugin 'scrooloose/nerdtree' " file browser
Plugin 'klen/python-mode' "fancy python plugin
Plugin 'pangloss/vim-javascript' "fancy javasctipt plugin
Plugin 'myusuf3/numbers.vim' " relative line numbers

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
colorscheme badwolf
set hlsearch " highlight search items
syntax enable " turn on fancy syntax settings

" set default indent settings
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab
autocmd FileType python setlocal ts=8 et sw=4 sts=4 expandtab
" nerd tree
map <C-n> :NERDTreeToggle<CR>

" python mode
"  Don't autofold code
let g:pymode_folding = 0
let g:pymode_rope = 0
let g:pymode_options_max_line_length = 100

" enable html/css syntax highlighting in js files
let javascript_enable_domhtmlcss = 1
