" CROSS PLATFORM SETUP
let WIN_PLUG_DIR = 'C:\\Users\\jacks\\AppData\\Local\\nvim-data\\plugged'
let PLUG_DIR = '~/vim/plugged'

let on_windows=0
if has("win64")
    let on_windows=1
    let PLUG_DIR=WIN_PLUG_DIR
endif

" SWAP AND UNDOFILE SETUP
set noswapfile
set nobackup

set undodir=
if on_windows == 1
    set undodir=C:\\Users\\jacks\\AppData\\Local\\nvim-data\\undodir
else
    set undodir=~/vim/undodir
endif
set undofile

set guifont=Consolas

call plug#begin(WIN_PLUG_DIR)
Plug 'sainnhe/edge'
Plug 'sheerun/vim-polyglot'
call plug#end()

" CORE CHANGES
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set number relativenumber
set autoindent
filetype plugin indent on
syntax on

" REMAPPING
let mapleader = " "

" NEOVIDE GUI MAPS
nnoremap <leader>pe :let g:neovide_fullscreen=v:true<CR>
nnoremap <leader>pr :let g:neovide_fullscreen=v:false<CR>

" THEMES, LATE LOADERS
set termguicolors
set background=dark

let g:edge_style = 'neon'
colorscheme edge
