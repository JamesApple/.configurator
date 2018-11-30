augroup FTDetects
    au BufRead,BufNewFile .tern-project setfiletype json
    au BufRead,BufNewFile .babelrc setfiletype json
    au BufRead,BufNewFile Procfile setfiletype yaml
    au BufRead,BufNewFile .env.override setfiletype sh
    au BufRead,BufNewFile .env.example setfiletype sh
    au BufRead,BufNewFile .envrc setfiletype sh
augroup END

augroup FTSettings
    au FileType snippets setlocal shiftwidth=2 tabstop=2
    au FileType gitcommit setlocal spell
    au FileType git,gitcommit setlocal foldmethod=syntax foldlevel=1
augroup END

augroup FTMaps
    au FileType help nnoremap <silent><buffer> q :q<CR>
augroup END
