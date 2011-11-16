" General
set nocompatible
nmap <F1> <Esc>
imap <F1> <Esc>

" Plugins
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype off " forces reload
filetype plugin indent on
syntax on

" Wiki
autocmd FileType mkd,vimwiki  set tw=72 fo=twal1q2
let g:vimwiki_folding = 1
let g:vimwiki_hl_headers = 1
let g:vimwiki_browsers = ['google-chrome', 'firefox']
let g:vimwiki_list = [{'path': '~/Work/Wiki/'},
                   \  {'path': '~/Dropbox/Writing/book/Patterns/', 'ext': '.txt'},
                   \  {'path': '~/Dropbox/Writing/blog/Christian/', 'ext': '.txt'}]

" Editing
set aw ai
set et ts=8 sts=4 sw=4 nonu
set showmatch matchtime=2
set whichwrap=<,>,h,l,[,]
set cursorline
set nofoldenable
"let maplocalleader = ","
let mapleader = ","

" Style
highlight CursorLine cterm=bold
highlight MatchParen cterm=none ctermbg=none ctermfg=yellow
let xml_use_html = 1

" Searching
set incsearch hlsearch
set ignorecase smartcase
set tags=tags,./tags
nmap <silent> <C-c> <Esc>:!ctags -R --exclude=node_modules<CR><CR>
nmap <silent> ,h <Esc>:set invhls<CR>:set hls?<CR>

" Completions
set wildmenu wildmode=full completeopt+=longest
set wildignore+=node_modules,classes,target,Maildir,tmp
set wildignore+=*.pyc,*.o,*.a,*.class,*.jar,*.zip,*.tgz,*.tar.gz,*.tbz2,*~
set wildignore+=.git,.hg,.svn,.bzr,CVS
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
set mouse=a

" NERD-Tree
nmap <Leader>f :NERDTreeToggle<CR>

" Sessions
set viminfo=!,'100,<50,s10,h
let sessionman_save_on_exit = 1

" Let %% expands to directory of %
cabbr <expr> %% expand('%:h')

" General programming
autocmd BufRead,BufNewFile *.ejs   set ft=html
autocmd BufRead,BufNewFile *.ru    set ft=ruby
autocmd BufRead,BufNewFile *.inc   set ft=sh
autocmd BufRead,BufNewFile *.md    set ft=mkd

" Coffee-Script
"let coffee_compile_on_save = 1

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
