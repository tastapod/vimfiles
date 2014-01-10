" General
set nocompatible
nmap <F1> <Esc>
imap <F1> <Esc>

" Plugins
let xml_use_html = 1
filetype off " forces reload
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "altercation/vim-colors-solarized"
Bundle "Blackrush/vim-gocode"
Bundle "bling/vim-airline"
"Bundle "bling/vim-bufferline"
"Bundle "bronson/vim-trailing-whitespace"
Bundle "dgryski/vim-godef"
Bundle "edsono/vim-matchit"
"Bundle "fholgado/minibufexpl.vim"
Bundle "guns/vim-clojure-static"
Bundle "jnwhiteh/vim-golang"
Bundle "joshearl/vim-leanpub"
"Bundle "kchmck/vim-coffee-script"
Bundle "kien/ctrlp.vim"
"Bundle "LaTeX-Box-Team/LaTeX-Box"
"Bundle "majutsushi/tagbar"
"Bundle "mattn/goplayground-vim"
"Bundle "mattn/webapi-vim"
"Bundle "msanders/snipmate.vim"
Bundle "othree/html5.vim"
Bundle "Raimondi/delimitMate"
"Bundle "scrooloose/nerdtree"
"Bundle "scrooloose/syntastic"
Bundle "sickill/vim-monokai"
Bundle "sickill/vim-pasta"
Bundle "sukima/xmledit"
Bundle "timcharper/textile.vim"
Bundle "tpope/vim-abolish"
Bundle "tpope/vim-fugitive"
"Bundle "tpope/vim-haml"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-pathogen"
Bundle "tpope/vim-sensible"
Bundle "tpope/vim-sensible"
Bundle "tpope/vim-surround"
"Bundle "tpope/vim-vividchalk"
Bundle "vim-scripts/SuperTab-continued."
Bundle "vimoutliner/vimoutliner"
Bundle "vimoutliner-colorscheme-fix"
"Bundle "vim-scripts/Gist.vim"
"Bundle "vim-scripts/Gundo"
Bundle "vim-scripts/HTML-AutoCloseTag"
"Bundle "vim-scripts/IndexedSearch"
Bundle "vim-scripts/sessionman.vim"
"Bundle "vim-scripts/tagexplorer.vim"
"Bundle "vim-scripts/vibrantink"
"Bundle "vim-scripts/wombat256.vim"
"Bundle "wincent/Command-T.git"
"Bundle "xolox/vim-easytags"
"Bundle "xolox/vim-misc"

filetype plugin indent on
syntax on

" Style
set background=dark
"color blue
"color darkblue
"color default
"color delek
"color desert
"color elflord
"color evening
"color koehler
"color Monokai
"color morning
"color murphy
"color pablo
"color peachpuff
"color ron
"color shine
"color slate
"color solarized
"color torte
"color zellner

set cursorline
highlight CursorLine term=bold cterm=bold guibg=Black
highlight MatchParen cterm=none ctermbg=none ctermfg=yellow
highlight Folded     term=bold cterm=bold guifg=fg guibg=bg

" Editing
set autowrite autoindent
set nojoinspaces            " Don't put 2 spaces after a full stop
set expandtab tabstop=8 softtabstop=4 shiftwidth=4
set showmatch matchtime=2
set whichwrap=<,>,h,l,[,]
set foldenable foldlevelstart=99
"let maplocalleader = ","
let mapleader = ","

" Make j and k move sensibly within a wrapped line
nmap j gj
nmap k gk

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
"let g:CommandTAcceptSelectionSplitMap='<C-w>'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'

" Store .swp files in /var/tmp with mangled names
set directory=/var/tmp//

" Windows
set hidden
set equalalways
set splitbelow splitright

" NERD-Tree
"nmap <Leader>f :NERDTreeToggle<CR>

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
autocmd FileType mkd,vimwiki,html   set fo=w12 lbr sw=2 sts=2 ts=2
autocmd FileType css set lbr sw=2 sts=2

" Go
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
autocmd BufRead,BufNewFile *.go     set ts=4 sts=4 sw=4 noet

" Clojure
autocmd FileType clojure nmap ,s <Plug>ClojureEvalToplevel
autocmd FileType clojure nmap ,f <Plug>ClojureEvalFile
autocmd FileType clojure nmap ,b <Plug>ClojureEvalBlock
autocmd FileType clojure nmap ,d <Plug>ClojureDocLookupWord
autocmd FileType clojure nmap ,i <Plug>ClojureDocLookupInteractive
autocmd FileType clojure nmap ,j <Plug>ClojureJavadocLookupWord
autocmd FileType clojure nmap ,r <Plug>ClojureStartRepl

" Outliner
autocmd FileType vo_base colorscheme vo_dark

let vimclojure#WantNailgun = 1
let vimclojure#HighlightBuiltins = 1

" Shell scripts
let g:is_bash=1
