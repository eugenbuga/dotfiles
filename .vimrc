set number
set tabstop=2

set nocompatible              " be iMproved, required
filetype off                  " required
set autoindent " automatically set indent of new line
set smartindent
set paste
set pastetoggle=<F2>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'valloric/youcompleteme'
"Plugin 'chase/vim-ansible-yaml'
"Plugin 'altercation/vim-colors-solarized'

" colorschemes
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

let mapleader = ','

" switch syntax highlighting on
syntax on

set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
"set background=dark

if filereadable(expand("~/.vimrc_background"))
	  let base16colorspace=256
	    source ~/.vimrc_background
    endif


" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" " show hidden files in NERDTree
let NERDTreeShowHidden=1
" " Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
"map <C-n> :NERDTreeToggle<CR>
