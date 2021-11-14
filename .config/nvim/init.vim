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
let g:deoplete#sources#clang#flags = [
      \ "-Wno-unused-variable",
      \ "-Wno-infinite-recursion",
      \ "-Werror=implicit-function-declaration",
      \ "-Wshadow",
      \ "-Wno-shadow-field-in-constructor-modified",
      \ "-Wno-shadow-ivar",
      \ "-Wuninitialized",
      \ "-Wunused-label",
      \ "-Wunused-lambda-capture"
\]
"end deoplete

let g:ale_linters = {
      \ 'vim': ['vint'],
      \ 'cpp': ['clang', 'clangtidy'],
      \ 'c': ['clang', 'clangtidy']
\}

let g:ale_cpp_cc_options = '-Wall -std=c++17 -Wno-unused-variable -Wno-infinite-recursion -Werror=implicit-function-declaration -Wshadow -Wno-shadow-field-in-constructor-modified -Wno-shadow-ivar -Wuninitialized -Wunused-label -Wunused-lambda-capture'

let g:ale_cpp_clangtidy_options = '-Wall -std=c++17 -Wno-unused-variable -Wno-infinite-recursion -Werror=implicit-function-declaration -Wshadow -Wno-shadow-field-in-constructor-modified -Wno-shadow-ivar -Wuninitialized -Wunused-label -Wunused-lambda-capture'

let g:ale_cpp_clangtidy_checks = [
      \ 'modernize-*',
      \ 'clang-analyzer-*', 
      \ 'google-*',
      \ 'misc-*'
\]

set number
set exrc
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

packloadall
silent! helptags ALL
