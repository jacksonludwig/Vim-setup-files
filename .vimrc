" CORE
set encoding=utf-8
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guioptions-=L
filetype off

set background=dark

set backspace=indent,eol,start
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=C:\\Users\\Jackson\\vimfiles\\undodir
set undofile
set incsearch
set relativenumber number

"
" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set guifont=Source_Code_Pro:h11:cANSI:qDRAFT

let g:netrw_altv=1

" status line
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c\ %)%P
set laststatus=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('C:\\Users\\Jackson\\vimfiles\\plugged')
Plug 'sainnhe/gruvbox-material'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
filetype plugin indent on
syntax on

let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>pe :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

""""""""""""""""""""
let g:gruvbox_material_background = 'medium'
colorscheme gruvbox-material
