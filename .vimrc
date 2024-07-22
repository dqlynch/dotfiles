execute pathogen#infect()

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
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" split stuff
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
nnoremap <C-=> <C-W>=
nnoremap <C-W> <C-W><C-W>

" Resize
nnoremap <C-H> :vertical res -5<CR>
nnoremap <C-L> :vertical res +5<CR>

" Copying
nnoremap <C-C> :%w !pbcopy<CR><CR>
vnoremap <C-C> :%w !pbcopy<CR><CR>

set pastetoggle=<F12>

" nerdtree
nnoremap <C-_> :NERDTree<CR>
let g:NERDTreeQuitOnOpen = 1

" want 4 spaces for python files
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" trim trailing whitespace on save
fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'vim'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()


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
" deal with python tabbing for expanded fn args **polyglot makes this obsolete
"autocmd Filetype python inoremap (<CR>  (<CR><BS><BS>)<Esc>O<BS>
" polyglot version
autocmd Filetype python inoremap (<CR>  (<CR>)<Esc>O


inoremap [      []<Left>
inoremap [<BS>  <Space><BS>
inoremap [[     [
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"

inoremap "      ""<Left>
inoremap "<BS>  <Space><BS>
inoremap ""     "
inoremap """     """"""<Left><Left><Left>
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

inoremap '      ''<Left>
inoremap '<BS>  <Space><BS>
inoremap ''     '
inoremap '''     ''''''<Left><Left><Left>
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"


" Paren surround
vnoremap (      c()<Esc>P

" Find and replace
nnoremap <Leader>s :%s/<C-r><C-w>//gc<Left><Left><Left>

" format comments
set formatoptions+=cro

" New shit from talk
set path+=**
set wildmenu

" tslime stuff
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
nnoremap <Leader>w :w\|:call SendToTmux("!!\n\n")<CR>

" lightline config
set laststatus=2
