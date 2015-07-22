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
Plugin 'tpope/vim-fugitive' " git in vim
Plugin 'scrooloose/nerdtree' " file browser
Plugin 'klen/python-mode' "fancy python plugin
Plugin 'pangloss/vim-javascript' "fancy javasctipt plugin
Plugin 'myusuf3/numbers.vim' " relative line numbers
Plugin 'ervandew/supertab' " supertab - auto completion
Plugin 'tpope/vim-surround' " quote/parenthesis/html tag wrapper
Plugin 'Yggdroot/indentLine' " indent line guides
Plugin 'bling/vim-airline' " status bar

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
set nu " show fixed line numbers when in others modes
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

" change colors of indent to something prettier :)
let g:indentLine_color_term = 239

" enable airline toolbar
let g:airline#extensions#tabline#enabled = 1 " shows tab bar
set laststatus=2 " fixes bug where airline doesn't show until splitting screen

" enable auto blocking with (, [, ", {, '
inoremap ( ()<Esc>:call BC_AddChar(")")<CR>i
inoremap { {<CR>}<Esc>:call BC_AddChar("}")<CR><Esc>kA<CR>
inoremap [ []<Esc>:call BC_AddChar("]")<CR>i
inoremap " ""<Esc>:call BC_AddChar("\"")<CR>i
inoremap ' ''<Esc>:call BC_AddChar("\"")<CR>i
" jump out of parenthesis
inoremap <C-j> <Esc>:call search(BC_GetChar(), "W")<CR>a

function! BC_AddChar(schar)
	if exists("b:robstack")
		let b:robstack = b:robstack . a:schar
	else
		let b:robstack = a:schar
	endif
endfunction

function! BC_GetChar()
	let l:char = b:robstack[strlen(b:robstack)-1]
	let b:robstack = strpart(b:robstack, 0, strlen(b:robstack)-1)
	return l:char
endfunction
