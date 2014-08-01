" General
set nocompatible
set shell=/bin/bash
set modeline modelines=4
noremap <F1> <Esc>
inoremap <F1> <Esc>
let xml_use_html = 1

" Vundle
filetype off " forces reload
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' " Vundle manages itself

Plugin 'Blackrush/vim-gocode'
Plugin 'Raimondi/delimitMate'
Plugin 'altercation/vim-colors-solarized'
Plugin 'asciidoc.vim'
Plugin 'bling/vim-airline'
Plugin 'dgryski/vim-godef'
Plugin 'edsono/vim-matchit'
Plugin 'guns/vim-clojure-static'
Plugin 'jnwhiteh/vim-golang'
Plugin 'joshearl/vim-leanpub'
Plugin 'kien/ctrlp.vim'
Plugin 'othree/html5.vim'
Plugin 'sickill/vim-monokai'
Plugin 'sickill/vim-pasta'
Plugin 'sukima/xmledit'
Plugin 'timcharper/textile.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'vim-scripts/SuperTab-continued.'
Plugin 'vim-scripts/sessionman.vim'
Plugin 'vimoutliner/vimoutliner'
Plugin 'vimwiki/vimwiki'
call vundle#end()
filetype plugin indent on
syntax on

" Style
"set t_Co=16
if has('gui_running')
    set background=light
else
    set background=dark
endif
color solarized
set cursorline

" Editing
set autowrite autoindent
set mouse=a
set nojoinspaces            " Don't put 2 spaces after a full stop
set expandtab tabstop=8 softtabstop=4 shiftwidth=4
set showmatch matchtime=2
set whichwrap=<,>,h,l,[,]
set foldenable foldlevelstart=99
let maplocalleader = ","
let mapleader = ","

" Searching
set incsearch hlsearch
set ignorecase smartcase
set tags=tags,./tags
noremap <silent> <C-c> <Esc>:!ctags -R --exclude=node_modules<CR><CR>
noremap <silent> ,h <Esc>:set invhls<CR>:set hls?<CR>

" Completions
set wildmenu wildmode=full completeopt+=longest
set wildignore+=node_modules/**,classes/**,target/**,Maildir/**,tmp/**,vendor/**
set wildignore+=*.pyc,*.o,*.a,*.class,*.jar,*.zip,*.tgz,*.tar.gz,*.tbz2,*~
set wildignore+=.git,.hg,.svn,.bzr,CVS
set wildignore+=bin/**,pkg/**,**/github.com/nsf/**
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'

" Store .swp files in /var/tmp with mangled names
set directory=/var/tmp//

" Windows
set equalalways
set splitbelow splitright

" NERD-Tree
"noremap <Leader>f :NERDTreeToggle<CR>

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
autocmd BufRead,BufNewFile *.adoc   set filetype=asciidoc
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
