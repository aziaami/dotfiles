" alot taken from github.com/victormours/dotfiles

" automatic reloading of .vimrc 
autocmd! bufwritepost .vimrc source %

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off        " required

" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader = "\<Space>"

""""""""""
""" VUNDLE
""""""""""
"
" set runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage itself (required)
Plugin 'gmarik/Vundle.vim'

" Plugins here ... 
Plugin 'tomasr/molokai'                   " color scheme
Plugin 'Valloric/YouCompleteMe'           " code completion
Plugin 'scrooloose/nerdtree'              " tree explorer
Plugin 'Xuyuanp/nerdtree-git-plugin'      " git status in nerdtree
Plugin 'octol/vim-cpp-enhanced-highlight' " advanced C++ syntax highlighting
Plugin 'ctrlpvim/ctrlp.vim'               " fuzzy finder
Plugin 'airblade/vim-gitgutter'           " git diff open files

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

" ================ General Config ===================
"
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

syntax enable
syntax on

set relativenumber  " show relative line numbers
set number			    " show absolute line number of current line
set showmatch		    " show matching brackets [] {} ()
set history=1000    " store lots of :cmdline history
set showmode        " show current mode down the bottom
set autoread		    " reload files changed outside of vim
set scrolloff=3     " Keep 3 lines below and above the cursor
set mouse=a         " enable use of mouse

set clipboard=unnamed	  " allow paste from mac clipboard

" save file
nnoremap <leader>s :w<CR>
" switch panes 
nnoremap <leader>w <C-w>w
" next buffer
nnoremap <leader>b :bn<CR>

" jump to end of line with ctrl-e in insert mode
inoremap <C-e> <C-o>$
" jump to start of line with ctrl-a in insert mode
inoremap <C-a> <C-o>0

" ================ Turn Off Swap Files ==============
"
set noswapfile
set nobackup
set nowb

" OR store temporary files in a central location
" as suggested here :
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" ================ Search ===========================
"
set incsearch		  " incremental search mode
set hlsearch		  " highlight search things
set ignorecase		" ignorecase when searching
set smartcase		  " only works when ignorecase on

" clear search highlights with <leader>n
nnoremap <silent> <leader>n :nohlsearch<CR>

" ================ Indentation ======================
set autoindent		  " align new line indent with previous line
set expandtab       " tab is replaced with spaces
set tabstop=2		    " number of spaces <TAB> counts for
set shiftwidth=2    " operation >> indents 2 spaces; << unindents 2 spaces

""""""""""""""""""""""""""""""""""""
" VIM PLUGIN CONFIG
""""""""""""""""""""""""""""""""""""
"
"" ========== UI colourscheme ======
set background=dark
colorscheme molokai

" =========== NERDTree =============
" Open NERDTree by deafult when we open vim
"autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 | NERDTree | endif

" Easily toggle NERDTree
nnoremap <leader>f :NERDTreeToggle<Enter>

" Easily open NerdTree on the file you’re editing
nnoremap <silent> <leader>v :NERDTreeFind<CR>

"============ GitGutter ============
" Activate by defualt 
let g:gitgutter_enabled=1

