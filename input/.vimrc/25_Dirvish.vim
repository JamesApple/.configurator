Plugin 'justinmk/vim-dirvish'

" Dirvish
let g:dirvish_mode = ':sort ,^.*[\/],'



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
