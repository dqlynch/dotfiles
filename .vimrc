" Plugins
call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'

call plug#end()

" Basics
set number
set showcmd
let mapleader = "\<Space>"

set autoread

" Pretty stuff
filetype plugin indent on
syntax enable
set encoding=utf-8

set background=dark
colorscheme onedark
" colorscheme apprentice
" colorscheme devbox?
" colorscheme desertEx?
set t_Co=256

set colorcolumn=80
set hlsearch

" whitespace
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

" split stuff
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-=> <C-W>=
nnoremap <C-W> <C-W><C-W>

" want 4 spaces for python files
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" trim trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" bracket matching stuff
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {<BS>  <Space><BS>
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap ((     (
inoremap (<BS>  <Space><BS>
inoremap <expr> )   strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap [      []<Left>
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"

" Find and replace
nnoremap <Leader>s :%s/<C-r><C-w>//gc<Left><Left><Left>
