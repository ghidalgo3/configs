set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'cespare/vim-toml'
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'vim-airline/vim-airline'
call vundle#end()

" OmniSharp
let g:OmniSharp_server_stdio = 1
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

" CtrlP Configuration
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" NERDTree configuration
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" VIM Configutation
filetype plugin indent on    " required
syntax on
set wrap
set relativenumber
set shiftwidth=4
set softtabstop=4
set smartindent
set number
set splitbelow
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
au BufReadPost *.props set syntax=xml
au BufReadPost *.targets set syntax=xml

" Strange backspace behavior...
set backspace=indent,eol,start
let g:airline#extensions#tabline#buffer_min_count = 1
nnoremap j gj
nnoremap k gk

" Ctrl-W Ctrl-W to switch focus out of a terminal
" CTRL-] to jump to a tag, CTRL-O to jump back
