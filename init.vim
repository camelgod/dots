set nocompatible              
set number
filetype off
set t_Co=256

" Include vundle in runtime path and call vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'prettier/vim-prettier'
Plugin 'python-mode/python-mode'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'scrooloose/nerdtree'
Plugin 'stevearc/vim-arduino'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

" Vim-Airline "
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'


" Vim-Arduino"
let g:arduino_board = 'arduino:avr:uno'
let g:arduino_dir = '/usr/share/arduino/'
let g:arduino_cmd = '/usr/bin/arduino'
let g:arduino_run_headless = 1

" Vim-easytags "
let g:easytags_async = 1

set noshowmode
set ignorecase
set smartcase
set splitbelow
set splitright
set hlsearch
" set termguicolors "
"
"

let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'


let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'



set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


" Keybinds "
let mapleader=";"
nnoremap <silent> <leader>tt :NERDTreeToggle<CR>
nnoremap <silent> <leader>tb :TagbarToggle<CR>
nnoremap <silent> <leader>tb :TagbarToggle<CR>
nnoremap <silent> <leader>gs :vsp <CR>:exec("tag ".expand("<cword>"))<CR> 
nnoremap <silent> <leader>gd :exec("tag ".expand("<cword>"))<CR> 
nnoremap <silent> <leader>gb :pop<CR> 


nnoremap tj  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tk  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>


" Start nerdtree on opening directory with vim"
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

" Auto start NERD tree if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

" Autoexit nerdtree if only window left "
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Ctags "
set tags=./tags;/
