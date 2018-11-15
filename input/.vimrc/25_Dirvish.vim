Plug 'justinmk/vim-dirvish'           " Hands down the best file browser for Vim
Plug 'kristijanhusak/vim-dirvish-git' " Display file status with color in dirvish

let g:dirvish_mode = ':sort ,^.*[\/],'

  let g:dirvish_git_indicators = {
  \ 'Modified'  : '✹',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Deleted'   : '✖',
  \ 'Ignored'   : '☒',
  \ 'Unknown'   : '?'
  \ }

" Mappings follow (e)xplorer <something> convention.
" (e)xplorer create (f)ile
" (e)xplorer (r)emove
" (e)xplorer create (d)irectory
augroup dirvish_config
  autocmd!
  autocmd FileType dirvish
        \ nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
        \| xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
        \| nnoremap <buffer> ef :!touch %
        \| nnoremap <buffer> ed :!mkdir -p %
        \| nnoremap <buffer> er :Shdo! rm -rf {}<CR>
        \| nnoremap <buffer> em :Shdo! mv {}<CR>
augroup END
