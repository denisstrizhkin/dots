"vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'dense-analysis/ale'

call plug#end()
"end vim-plug

"deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
let g:deoplete#sources#clang#std = {
  \ 'c': 'c11',
  \ 'cpp': 'c++17',
  \ 'objc': 'c11',
  \ 'objcpp': 'c++17'
\}
"end deoplete

let g:ale_linters = {
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}



set number
set exrc
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

packloadall
silent! helptags ALL
