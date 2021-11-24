set number
set mouse=a
set numberwidth=1
set clipboard+=unnamedplus
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set sw=2
set tabstop=2
set softtabstop=2
set relativenumber
set noshowmode
set cursorline
set termguicolors

" Maps
let mapleader="\<Space>"
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>o o<ESC>
nmap <Leader>O O<ESC>
nmap <Leader>/ :let @/=""<CR>
nmap <Leader>L :bnext<cr>
nmap <Leader>H :bprev<cr>
nmap <Leader>l :tabn<cr>
nmap <Leader>h :tabp<cr>
