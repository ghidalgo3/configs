syntax on
set shiftwidth=4
set softtabstop=4
set smartindent
set number
let mapleader="\<Space>"
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
" Avoid using the arrow keys
" Also because its noremap it won't recurse
" ALWAYS uses non-recursive mappings
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
inoremap <Esc> <nop>
inoremap jk <Esc> 
" map can be configured based on modes
inoremap <C-u> <Esc>lwbveUi
nnoremap <Leader>d dd
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
" dummy mappings
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>f :CtrlP<cr>
nnoremap <Leader>w :w<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>t :NERDTreeToggle<cr>
nnoremap <Leader>ma :! make<cr>
au BufReadPost *.pde set syntax=cpp
