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
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Strange backspace behavior...
set backspace=indent,eol,start
let g:airline#extensions#tabline#buffer_min_count = 1
nnoremap j gj
nnoremap k gk
"wow much colors in lisp wow
let g:lisp_rainbow=1
