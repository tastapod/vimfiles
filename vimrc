" General
set nocompatible
set shell=/bin/zsh secure
set modeline modelines=4
set regexpengine=0
noremap <F1> <Esc>
inoremap <F1> <Esc>
let xml_use_html = 1

" Plug
call plug#begin('~/.vim/plugged')

Plug 'Blackrush/vim-gocode'
Plug 'Raimondi/delimitMate'
Plug 'altercation/vim-colors-solarized'
Plug 'dgryski/vim-godef'
Plug 'ervandew/supertab'
Plug 'guns/vim-clojure-static', {'for': 'clojure'}
Plug 'jnwhiteh/vim-golang'
Plug 'joshearl/vim-leanpub'
Plug 'kien/ctrlp.vim'
Plug 'othree/html5.vim'
Plug 'sickill/vim-monokai'
Plug 'sickill/vim-pasta'
Plug 'sukima/xmledit'
Plug 'timcharper/textile.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/HTML-AutoCloseTag'
Plug 'vim-scripts/sessionman.vim'
Plug 'vimoutliner/vimoutliner', {'for': ['votl', 'otl']}
Plug 'vimwiki/vimwiki', {'for': 'vimwiki'}

call plug#end()

set background=light
" color solarized

" Editing
set autowrite autoindent
set mouse=a
set nojoinspaces            " Don't put 2 spaces after a full stop
set expandtab tabstop=8 softtabstop=4 shiftwidth=4
set showmatch matchtime=2
set whichwrap=<,>,h,l,[,]
set foldenable foldlevelstart=99
set spellfile=$HOME/.vimspell.en.add
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
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*'

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

" Clojure
let vimclojure#WantNailgun = 1
let vimclojure#HighlightBuiltins = 1

" Shell scripts
let g:is_zsh=1
