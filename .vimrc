" ********************************* My config *********************************
colorscheme murphy

let mapleader=";"
nmap <Leader>tn :tnect<CR>
nmap <Leader>tp :tprevious<CR>
nnoremap <Leader>ww <c-w><c-w>
nnoremap <Leader>ws <c-w>s
nnoremap <Leader>wv <c-w>v
nnoremap <Leader>wj <c-w>j
nnoremap <Leader>wk <c-w>k
nnoremap <Leader>wh <c-w>h
nnoremap <Leader>wl <c-w>l

set ruler
set number
set cursorline
"set cursorcolumn

filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set nowrap
set foldmethod=syntax
set nofoldenable

set ignorecase
set hlsearch

set nocompatible

set wildmenu
set laststatus=2

syntax enable
syntax on

" ********************************* fswitch config *********************************
nmap <silent> <Leader>sw :FSHere<cr>

" ********************************* indent guides config *********************************
let g:indent_guides_enable_on_vim_satartup=1
let g:indetn_guides_start_level=2
let g:indent_guides_guide_size=1
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" ********************************* tagbar config *********************************
nnoremap <Leader>ilt :TagbarToggle<CR>
let tagbar_left=1
let tagbar_width=32
let g:tagbar_compact=1
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'c:classes:0:1',
        \ 'd:macros:0:1',
        \ 'e:enumerators:0:0',
        \ 'f:functions:0:1',
        \ 'g:enumeration:0:1',
        \ 'l:local:0:1',
        \ 'm:members:0:1',
        \ 'n:namespaces:0:1',
        \ 'p:functions_prototypes:0:1',
        \ 's:structs:0:1',
        \ 't:typedefs:0:1',
        \ 'u:unions:0:1',
        \ 'v:global:0:1',
        \ 'x:external:0:1'
    \ ],
    \ 'sro'     :   '::',
    \ 'kind2scope' : {
        \ 'g' : 'enum',
        \ 'n' : 'namespace',
        \ 'c' : 'class',
        \ 's' : 'struct',
        \ 'u' : 'union'
    \ },
    \ 'scope2kind' : {
        \ 'enum'        : 'g',
        \ 'namespace'   : 'n',
        \ 'class'       : 'c',
        \ 'struct'      : 's',
        \ 'union'       : 'u'
    \ }
\ }

" ********************************* tagbar config *********************************
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" ********************************* vundle config *********************************
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
call vundle#end()
filetype plugin indent on
