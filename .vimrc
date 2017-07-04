set number

" Powerline part
set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim/
set laststatus=2
set showtabline=1
set noshowmode

" vundle part
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
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

set autoindent " automatically set indent of new line
set smartindent

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" " show hidden files in NERDTree
let NERDTreeShowHidden=1
" " Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
