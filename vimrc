" General
set nocompatible
nmap <F1> <Esc>
imap <F1> <Esc>

" Plugins
let xml_use_html = 1
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
filetype off " forces reload
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "Blackrush/vim-gocode"
Bundle "bronson/vim-trailing-whitespace"
Bundle "edsono/vim-matchit"
Bundle "guns/vim-clojure-static"
Bundle "joshearl/vim-leanpub"
"Bundle "kchmck/vim-coffee-script"
"Bundle "kien/ctrlp.vim"
"Bundle "LaTeX-Box-Team/LaTeX-Box"
"Bundle "mattn/goplayground-vim"
"Bundle "mattn/webapi-vim"
"Bundle "msanders/snipmate.vim"
Bundle "othree/html5.vim"
"Bundle "sickill/vim-monokai"
Bundle "sukima/xmledit"
Bundle "timcharper/textile.vim"
Bundle "tpope/vim-abolish"
Bundle "tpope/vim-fugitive"
"Bundle "tpope/vim-haml"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-pathogen"
"Bundle "tpope/vim-sensible"
Bundle "tpope/vim-surround"
"Bundle "tpope/vim-vividchalk"
Bundle "tsaleh/vim-supertab"
"Bundle "vimoutliner/vimoutliner"
"Bundle "vim-scripts/Gist.vim"
"Bundle "vim-scripts/Gundo"
Bundle "vim-scripts/HTML-AutoCloseTag"
"Bundle "vim-scripts/IndexedSearch"
Bundle "vim-scripts/sessionman.vim"
"Bundle "vim-scripts/Solarized"
"Bundle "vim-scripts/tagexplorer.vim"
Bundle "vim-scripts/The-NERD-tree"
"Bundle "vim-scripts/vibrantink"
"Bundle "vim-scripts/wombat256.vim"
Bundle "wincent/Command-T.git"
"Bundle "xolox/vim-easytags"
"Bundle "xolox/vim-misc"

filetype plugin indent on
syntax on

" Wiki
let g:vimwiki_global_ext = 0
let g:vimwiki_folding = 1
let g:vimwiki_hl_headers = 1
let g:vimwiki_browsers = ['google-chrome', 'firefox']
let g:vimwiki_list = [{'path': '~/Work/Wiki/'},
            \  {'path': '~/Dropbox/Writing/book/Patterns/',
            \    'ext': '.asc'},
            \  {'path': '~/Dropbox/Writing/blog/Christian/',
            \    'ext': '.asc',
            \    'auto_export': 1}]

" Editing
set autowrite autoindent
set nojoinspaces            " Don't put 2 spaces after a full stop
set expandtab tabstop=8 softtabstop=4 shiftwidth=4
set showmatch matchtime=2
set whichwrap=<,>,h,l,[,]
set cursorline
set nofoldenable
"let maplocalleader = ","
let mapleader = ","

" Make j and k move sensibly within a wrapped line
nmap j gj
nmap k gk

" Style
highlight CursorLine cterm=bold
highlight MatchParen cterm=none ctermbg=none ctermfg=yellow

" Searching
set incsearch hlsearch
set ignorecase smartcase
set tags=tags,./tags
nmap <silent> <C-c> <Esc>:!ctags -R --exclude=node_modules<CR><CR>
nmap <silent> ,h <Esc>:set invhls<CR>:set hls?<CR>

" Completions
set wildmenu wildmode=full completeopt+=longest
set wildignore+=node_modules/**,classes/**,target/**,Maildir/**,tmp/**,vendor/**
set wildignore+=*.pyc,*.o,*.a,*.class,*.jar,*.zip,*.tgz,*.tar.gz,*.tbz2,*~
set wildignore+=.git,.hg,.svn,.bzr,CVS
set wildignore+=bin/**,pkg/**,**/github.com/nsf/**
let g:CommandTAcceptSelectionSplitMap='<C-w>'

" Store .swp files in /var/tmp with mangled names
set directory=/var/tmp//

" Windows
nmap <C-N> <C-W>w
nmap <C-P> <C-W>W
nmap ,n <C-W>w
nmap ,p <C-W>W
nmap ,H <C-W>H
nmap ,J <C-W>J
nmap ,K <C-W>K
nmap ,L <C-W>L
nmap ,= <C-W>=
nmap ,T <C-W>T
nmap ,r <C-W>r
nmap ,R <C-W>R
set hidden
set equalalways
set splitbelow splitright
set mouse=a mousehide

" NERD-Tree
nmap <Leader>f :NERDTreeToggle<CR>

" Sessions
set viminfo=!,'100,<50,s10,h
let sessionman_save_on_exit = 1

" Let %% expands to directory of %
cabbr <expr> %% expand('%:h')

" Filetypes
autocmd BufRead,BufNewFile *.ejs    set filetype=html
autocmd BufRead,BufNewFile *.ru     set filetype=ruby
autocmd BufRead,BufNewFile *.inc    set filetype=sh
autocmd BufRead,BufNewFile *.md     set filetype=mkd
autocmd BufRead,BufNewFile *.cfg    set filetype=dosini
autocmd FileType javascript,ruby,sh set number

" Writing
autocmd FileType mkd,vimwiki,html   set fo=w12 lbr sw=2 sts=2
autocmd FileType css set lbr sw=2 sts=2

" Go
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
autocmd BufRead,BufNewFile *.go     set ts=4 sts=4 sw=4 noet

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

" Shell scripts
let g:is_bash=1
"let g:sh_fold_enabled=7
