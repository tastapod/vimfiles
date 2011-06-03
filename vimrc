" General
set nocompatible

" Editing
set aw ai sw=2 ts=2 sts=2 et
set fo=tcrqwn
set showmatch matchtime=5
set whichwrap=<,>,h,l,[,]
set cursorline
highlight CursorLine cterm=bold
highlight MatchParen ctermbg=white

" Filetypes
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype off " forces reload
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

" Using windows
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

" NERD-Tree
nmap <F9> :NERDTreeToggle<CR>

" Sessions
let sessionman_save_on_exit = 1

" Let %% expands to directory of %
cabbr <expr> %% expand('%:p:h')

" General programming
autocmd BufRead,BufNewFile *.ru                  set filetype=ruby
autocmd BufNewFile,BufRead *.inc                 set filetype=sh
autocmd FileType ruby,python,javascript,clojure  set ts=2 sts=2 sw=2 et nu

" Coffee-Script
let coffee_compile_on_save = 1

" Clojure
autocmd FileType clojure nmap ,s <Plug>ClojureEvalToplevel
autocmd FileType clojure nmap ,f <Plug>ClojureEvalFile
autocmd FileType clojure nmap ,b <Plug>ClojureEvalBlock
autocmd FileType clojure nmap ,d <Plug>ClojureDocLookupWord
autocmd FileType clojure nmap ,i <Plug>ClojureDocLookupInteractive
autocmd FileType clojure nmap ,j <Plug>ClojureJavadocLookupWord
autocmd FileType clojure nmap ,r <Plug>ClojureStartRepl

let vimclojure#WantNailgun = 1
let vimclojure#HighlightBuiltins = 1
"let maplocalleader = ","
let mapleader = ","

" Shell scripts
let g:is_bash=1
"let g:sh_fold_enabled=7
