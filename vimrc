"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
let mapleader = ","
" ----------------------------------------------------------------------------
" KEY MAPS
" ----------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

nmap <leader>ne :NERDTreeToggle<cr>         " toggle nerd tree

nmap <leader>B Oimport ipdb; ipdb.set_trace()<Esc>
nmap <leader>b oimport ipdb; ipdb.set_trace()<Esc>

nmap <silent> <leader>gb :Gblame<CR>                        " Fugitive settings
nmap <silent> <leader>gc :Gcommit<CR>                       " Fugitive settings
nmap <silent> <leader>gd :Gdiff<CR>                         " Fugitive settings
nmap <silent> <leader>ge :Gedit<CR>                         " Fugitive settings
nmap <silent> <leader>dge :diffget<CR>                      " Fugitive settings
nmap <silent> <leader>gl :Glog<CR>                          " Fugitive settings
nmap <silent> <leader>gp :Git push<CR>                      " Fugitive settings
nmap <silent> <leader>gr :Gread<CR>:GitGutter<CR>           " Fugitive settings
nmap <silent> <leader>gs :Gstatus<CR>                       " Fugitive settings
nmap <silent> <leader>gw :Gwrite<CR>:GitGutter<CR>          " Fugitive settings
nmap <silent> <leader>dpu :diffput<CR>                      " Fugitive settings
nmap <silent> <leader>gg :Git pull<CR>                      " Fugitive settings

nnoremap <silent> <leader>rh :nohl<CR>      " Remove highlighted search results
nnoremap <leader>sv :source $MYVIMRC<cr>                         " Source vimrc
nmap <leader>tu :UndotreeToggle<cr>	                      " undotree toggle

if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    noremap <silent><leader>yy :.w !pbcopy<CR>
  endif
endif

map <C-h> <C-w><Left>			                  " Move Cursor to window left
map <C-j> <C-w><Down>	 	                    " Move Cursor to window down
map <C-k> <C-w><Up>  		                    " Move Cursor to window up
map <C-l> <C-w><Right>		                  " Move Cursor to window right 

inoremap jk <Esc>		                        " Return to normal mode

" You don't know what you're missing if you don't use this.
nmap <C-e> :e#<CR>

" ----------------------------------------------------------------------------
" PLUGINS
" ----------------------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" general helpers
Plugin 'scrooloose/nerdtree'		" nerd tree
Plugin 'w0rp/ale'               " Asynchronous Lint Engine
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'mbbill/undotree.git'
Plugin 'spf13/vim-autoclose.git'
Plugin 'jiangmiao/auto-pairs'

" Search and destroy"
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-abolish'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/fzf.vim'

" web
Plugin 'ap/vim-css-color'         " hightlights css color code in resp. color
Plugin 'othree/html5.vim.git'
Plugin 'mattn/emmet-vim'

" git
Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ----------------------------------------------------------------------------
" OPTIONS
" ----------------------------------------------------------------------------

filetype plugin on
syntax on


set autoindent                         " Carry over indenting from previous line
set autoread                           " Don't bother me hen a file changes

set backspace=indent,eol,start         " Let backspace work over anythi
set backupdir=~/tmp,~/.vim/undodir,/var/tmp,/tmp

set clipboard=unnamed
set colorcolumn=80
colorscheme spring-night

set encoding=utf8                      " UTF-8 by default
set expandtab                          " Use soft tabs

set foldmethod=indent

set guifont=Ubuntu\ Mono\ derivative\ Powerline:h14

set hlsearch                           " shift 8 word highlighting

set incsearch

set mouse=a                            " Use mouse support in XTerm/iTerm

set noswapfile
set noautochdir
set number                             " Line numbers

set smarttab                           " Use shiftwidth to tab at line beginning
set shiftwidth=2                       " Width of autoindent

set t_Co=256
set tabstop=2                          " Tab settings

set undodir=~/.vim/undodir
set undofile


let g:jsx_ext_required = 0             " Allow JSX in normal JS files"
let g:NERDSpaceDelims = 1
let NERDTreeIgnore = ['\.pyc$']        " ignore pyc files
