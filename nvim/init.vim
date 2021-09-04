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

" Plugins
call plug#begin('~/.config/nvim/plugged')

  " Themes
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
	Plug 'mhartington/oceanic-next'
	Plug 'sainnhe/sonokai'

  " IDE
  Plug 'easymotion/vim-easymotion'
  Plug 'scrooloose/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'alvan/vim-closetag'
  Plug 'mattn/emmet-vim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'tpope/vim-commentary'
  Plug 'Yggdroot/indentLine'
  Plug 'andymass/vim-matchup'
  Plug 'jiangmiao/auto-pairs'
	Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

call plug#end()

" Mixed config
let g:sonokai_style = 'default'
colorscheme sonokai

let NERDTreeQuitOnOpen=1
let mapleader="\<Space>"
lua require'colorizer'.setup()
 
" Config for plugins
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/closetag.vim
" Maps
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>o o<ESC>
nmap <Leader>O O<ESC>
nmap <Leader>/ :let @/=""<CR>
nmap <Leader>h :tabn<cr>
nmap <Leader>l :tabp<cr>
