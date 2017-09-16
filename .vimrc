" Basics
set number
set showcmd

let mapleader = "\<Space>"

filetype plugin indent on
syntax enable
set background=light
colorscheme solarized
set encoding=utf-8

" whitespace
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

" trim trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" bracket matching stuff
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap <expr> )   strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap [      []<Left>
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
