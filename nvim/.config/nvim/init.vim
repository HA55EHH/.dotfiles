set exrc
set guicursor=
set relativenumber
set nu
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
" TODO: lookup what these do, something to do with undotree?
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
" set noshowmode
" set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes
set clipboard=unnamed

call plug#begin('~/.vim/plugged')
Plug 'ayu-theme/ayu-vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'numToStr/Comment.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'romainl/vim-cool'
call plug#end()

lua require('Comment').setup()

" COLOUR SCHEMES
let ayucolor="dark"
colorscheme ayu

" LEADER
let mapleader = " "


" MAPPINGS - NORMAL
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>x :!chmod +x %<CR>

" MAPPINGS - VISUAL
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup HA55EHH
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END




