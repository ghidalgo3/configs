set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Literally control P
Plugin 'kien/ctrlp.vim'
" Visual File Explorer, bind to <Space>-t
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
set nowrap
set relativenumber
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
nnoremap  <Up> ""
nnoremap  <Down> ""
nnoremap  <Left> ""
nnoremap  <Right> ""
inoremap jk <Esc>
" map can be configured based on modes
inoremap <C-u> <Esc>lwbveUi
nnoremap <Leader>d dd
" dummy mappings
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>f :CtrlP<cr>
nnoremap <Leader>w :w<cr>
"completely unrelated but also useful
"makes all windows to equal width
nnoremap <Leader>W <C-w>=
nnoremap <Leader>q :q<cr>
nnoremap <Leader>t :NERDTreeToggle<cr>
nnoremap <Leader>ma :! make<cr>
au BufReadPost *.pde set syntax=cpp
" Strange backspace behavior...
set backspace=indent,eol,start
let g:airline#extensions#tabline#buffer_min_count = 1
nnoremap j gj
nnoremap k gk
"wow much colors in lisp wow
let g:lisp_rainbow=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
