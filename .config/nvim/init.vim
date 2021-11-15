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
      \ "-Wall",
      \ "-std=c++17",
\]
"end deoplete

let g:ale_linters = {
      \ 'vim': ['vint'],
      \ 'cpp': ['clang', 'clangtidy'],
      \ 'c': ['clang', 'clangtidy']
\}

let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'cpp': [ 'clangtidy', 'clang-format' ]
\}

let g:ale_fix_on_save = 1

let g:ale_cpp_cc_options = '-Wall -std=c++17'
let g:ale_cpp_clangtidy_options = '-Wall -std=c++17'

let g:ale_cpp_clangtidy_checks = [
      \ 'modernize-*',
      \ '-modernize-use-trailing-return-type*',
      \ 'clang-analyzer-*',
      \ 'google-*',
      \ 'misc-*'
\]

let g:ale_c_clangformat_style_option='{BasedOnStyle: Google, ColumnLimit: 80, Language: Cpp,
      \ DerivePointerAlignment: false, PointerAlignment: Left}'
let g:ale_cpp_clangtidy_extra_options= '--format-style={BasedOnStyle: Google, ColumnLimit: 80, Language: Cpp,
      \ DerivePointerAlignment: false, PointerAlignment: Left}'

set number
set exrc
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

packloadall
silent! helptags ALL
