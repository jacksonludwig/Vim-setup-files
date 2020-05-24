" CROSS PLATFORM SETUP
let WIN_PLUG_DIR = 'C:\\Users\\jacks\\AppData\\Local\\nvim-data\\plugged'
let PLUG_DIR = '~/vim/plugged'

let on_windows=0
if has("win64")
    let on_windows=1
    let PLUG_DIR=WIN_PLUG_DIR
endif

" PLUG CALLS
call plug#begin(WIN_PLUG_DIR)
Plug 'sainnhe/edge'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" SWAP AND UNDOFILE SETUP
set noswapfile
set nobackup
set nowritebackup

set undodir=
if on_windows == 1
    set undodir=C:\\Users\\jacks\\AppData\\Local\\nvim-data\\undodir
else
    set undodir=~/vim/undodir
endif
set undofile

set guifont=Consolas

" COLOR COLUMN
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" CORE CHANGES
set hidden
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set number relativenumber
set autoindent
filetype plugin indent on
syntax on

" COC BASE CONFIG CHANGES
set updatetime=300
set shortmess +=c

" REMAPPING
let mapleader = " "

" COC REMAPPING

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" NEOVIDE GUI MAPS
nnoremap <leader>pe :let g:neovide_fullscreen=v:true<CR>
nnoremap <leader>pr :let g:neovide_fullscreen=v:false<CR>

" STATUS LINE CHANGES
set statusline=%f\ %{coc#status()}\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P

" THEMES, LATE LOADERS
set termguicolors
set background=dark

let g:edge_style = 'aura'
colorscheme edge
