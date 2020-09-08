set nocompatible              
set number
filetype off
set t_Co=256
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

let g:ale_fixers = { 'javascript': ['eslint'], 'typescript': ['prettier', 'tslint'], 'vue': ['eslint'], 'scss': ['prettier'], 'html': ['prettier'], 'reason': ['refmt'] }
let g:ale_fix_on_save = 1

" Include vundle in runtime path and call vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'othree/yajs.vim'
Plugin 'dense-analysis/ale'

call vundle#end()            " required
filetype plugin indent on    " required

" Vim-Airline "
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'



" Vim-easytags "
let g:easytags_async = 1

set noshowmode
set ignorecase
set smartcase
set splitbelow
set splitright
set hlsearch
" set termguicolors "


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


" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css


