" General
set nocompatible

" Editing
set aw ai sw=2 ts=2 sts=2 et
set fo=tcrqwn
set showmatch matchtime=5
set whichwrap=<,>,h,l,[,]
set cursorline
highlight CursorLine cterm=bold
"set background=dark


" Filetypes
filetype off " forces reload
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax on

" Searching
set incsearch hlsearch
set ignorecase smartcase
set tags=tags,./tags
nmap <silent> <C-c> <Esc>:!ctags -R<CR><CR>
nmap <silent> ,h <Esc>:set invhls<CR>:set hls?<CR>

" Completions
set wildmenu wildmode=full completeopt+=longest

" Store .swp files in /tmp with mangled names
set directory=/tmp//

" Navigating windows
nmap <C-N> <C-W>w
nmap <C-P> <C-W>W
nmap ,n <C-W>w
nmap ,p <C-W>W
nmap ,H <C-W>H
nmap ,J <C-W>J
nmap ,K <C-W>K
nmap ,L <C-W>L
nmap ,= <C-W>=
nmap ,t <C-W>T
nmap ,f <C-W>r
nmap ,b <C-W>R

set hidden
set equalalways
set splitbelow splitright
set mouse=a

" Let %% expands to directory of %
cabbr <expr> %% expand('%:p:h')

" Ruby
autocmd BufRead,BufNewFile *.rb,*.ru,*.rake,Rakefile    set filetype=ruby ts=2 sw=2 nu

" Scala
autocmd BufRead,BufNewFile *.scala          set ts=2 sw=2 nu

" Clojure
autocmd BufRead,BufNewFile *.clj            set ts=2 sw=2 nu
autocmd BufRead,BufNewFile *.clj            nmap ,s <Plug>ClojureEvalToplevel
autocmd BufRead,BufNewFile *.clj            nmap ,f <Plug>ClojureEvalFile
autocmd BufRead,BufNewFile *.clj            nmap ,b <Plug>ClojureEvalBlock
autocmd BufRead,BufNewFile *.clj            nmap ,d <Plug>ClojureDocLookupWord
autocmd BufRead,BufNewFile *.clj            nmap ,i <Plug>ClojureDocLookupInteractive
autocmd BufRead,BufNewFile *.clj            nmap ,j <Plug>ClojureJavadocLookupWord
autocmd BufRead,BufNewFile *.clj            nmap ,r <Plug>ClojureStartRepl

let vimclojure#WantNailgun = 1
let vimclojure#HighlightBuiltins = 1
"let maplocalleader = ","
let mapleader = ","

" Shell scripts
let g:is_bash=1
"let g:sh_fold_enabled=7
autocmd BufNewFile,BufRead *.inc            set filetype=sh
