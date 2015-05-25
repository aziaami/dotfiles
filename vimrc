set exrc		" use .vimrc from pwd (if present)
set secure		" only allow secure commands from local .vimrc

let $PATH = '/Library/Frameworks/Python.framework/Versions/2.7/bin:'.$PATH
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

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" code completion
"Plugin 'Valloric/YouCompleteMe'
" ColorScheme
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
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

set number			" show line numbers
set showmatch		" show matching brackets

set autoread		" reload changed files

"set ruler
set autoindent		" align new line indent with previous line
set tabstop=4		" number of spaces <TAB> counts for
set softtabstop=4	" insert/delete 4 spaces with <TAB>
set shiftwidth=4	" operation >> indents 4 columns; << unindents 4 columns

""""""""""""""""""""""""""""""""""""
" VIM UI
""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme molokai

""""""""""""""""""""""""""""""""""""
" VIM PLUGIN CONFIG
""""""""""""""""""""""""""""""""""""

