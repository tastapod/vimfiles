setlocal fo=a12 lbr sw=2 sts=2 ts=2
setlocal wrap linebreak nolist textwidth=72
setlocal spell

" These override the default vimwiki settings
nmap <buffer> <C-]> <Plug>VimwikiFollowLink
nmap <buffer> <C-t> <Plug>VimwikiGoBackLink
nmap <buffer> <LocalLeader>tt <Plug>VimwikiToggleListItem
