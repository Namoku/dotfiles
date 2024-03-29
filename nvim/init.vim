set number
set mouse=a
set numberwidth=1
set clipboard+=unnamedplus
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab
set relativenumber
set noshowmode
set cursorline
set termguicolors
set encoding=UTF-8

" Plugins
call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'mhartington/oceanic-next'
Plug 'sainnhe/sonokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

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
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
call plug#end()

" Mixed config
" let g:sonokai_style = 'default'
colorscheme tokyonight
" let g:airline#extensions#tabline#enabled = 1
let g:tokyonight_style = "storm"

let NERDTreeQuitOnOpen=1
let mapleader="\<Space>"
lua require'colorizer'.setup()

" Config for plugins
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/closetag.vim
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.jsx,*.tsx,*.html.erb,*.md'
let g:closetag_xhtml_filenames = '*.js,*.jsx,*.tsx'
let g:vim_jsx_pretty_highlight_close_tag=1
let g:airline#extensions#tabline#fnamemod = '::t'
let g:vim_json_conceal=0
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Maps
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>o o<ESC>
nmap <Leader>O O<ESC>
nmap <leader>; A;<ESC>
nmap <Leader>/ :let @/=""<CR>
nmap <Leader>L :bnext<cr>
nmap <Leader>H :bprev<cr>
nmap <Leader>l :tabn<cr>
nmap <Leader>h :tabp<cr>
nmap <Leader>F :Files<cr>
nmap <Leader>R :Rg<cr>
nmap <Leader>b :Buffers<cr>
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
