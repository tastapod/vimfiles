setlocal fo=w12 lbr sw=2 sts=2 ts=2
setlocal wrap linebreak nolist textwidth=78

" These override the default vimwiki settings
nmap <buffer> <C-]> <Plug>VimwikiFollowLink
nmap <buffer> <C-t> <Plug>VimwikiGoBackLink
nmap <buffer> <LocalLeader>tt <Plug>VimwikiToggleListItem
