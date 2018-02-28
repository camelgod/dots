set nocompatible              
set number
filetype off
set t_Co=256

" Include vundle in runtime path and call vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'python-mode/python-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'scrooloose/nerdtree'
Plugin 'stevearc/vim-arduino'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_powerline_fonts = 1
set noshowmode
let g:airline_theme='molokai'
let g:arduino_board = 'arduino:avr:uno'
let g:arduino_dir = '/usr/share/arduino/'
let g:arduino_cmd = '/usr/bin/arduino'
let g:arduino_run_headless = 1

set mouse=a
set ignorecase
set smartcase
set splitbelow
set splitright
