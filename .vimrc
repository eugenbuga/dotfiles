set number

" Powerline part
set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim/
set laststatus=2
set showtabline=1
set noshowmode
set t_Co=256

" vundle part
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'

filetype plugin indent on
