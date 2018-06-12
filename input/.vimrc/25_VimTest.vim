Plugin 'tpope/vim-dispatch'
Plugin 'janko-m/vim-test'
let test#strategy = "neovim"

augroup test
  autocmd!
  autocmd BufWrite * if test#exists() |
    \   TestFile |
    \ endif
augroup END
