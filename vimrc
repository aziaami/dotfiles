" automatic reloading of .vimrc 
autocmd! bufwritepost .vimrc source %

""""""""""
""" VUNDLE
""""""""""
set nocompatible	" be iMproved, required
filetype off		" required

" set runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage itself (required)
Plugin 'gmarik/Vundle.vim'

" Plugins here ... 
"Plugin 'Valloric/YouCompleteMe'    " code completion
Plugin 'tomasr/molokai'             " color scheme

" All of your Plugins must be added before this line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line ... 
"""""""""""""""""""""""""""""""""""
set mouse=a             " enable use of mouse
set clipboard=unnamed	" allow paste from mac clipboard

""" SEARCH
set incsearch		" incremental search mode
set hlsearch		" highlight search things
set ignorecase		" ignorecase when searching
set smartcase		" only works when ignorecase on

" clear search highlights with Ctrl-l
nnoremap <silent> <C-l> :nohl<CR><C-l>	

""" CODING
syntax enable
syntax on

set relativenumber  " show relative line numbers
set number			" show absolute line number
set showmatch		" show matching brackets [] {} ()

set autoread		" reload changed files

"set ruler
set autoindent		" align new line indent with previous line
set expandtab       " tab is replaced with spaces
set tabstop=4		" number of spaces <TAB> counts for
set shiftwidth=4	" operation >> indents 4 spaces; << unindents 4 spaces

" jump to end of line with ctrl-e in insert mode
inoremap <C-e> <C-o>$
" jump to start of line with ctrl-a in insert mode
inoremap <C-a> <C-o>0

""""""""""""""""""""""""""""""""""""
" VIM UI
""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme molokai

""""""""""""""""""""""""""""""""""""
" VIM PLUGIN CONFIG
""""""""""""""""""""""""""""""""""""

