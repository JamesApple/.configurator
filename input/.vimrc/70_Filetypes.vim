augroup filetypedetect
    au BufRead,BufNewFile .tern-project setfiletype json
    au BufRead,BufNewFile .babelrc setfiletype json
    au BufRead,BufNewFile Procfile setfiletype yaml
    au BufRead,BufNewFile .env.override setfiletype sh
    au BufRead,BufNewFile .env.example setfiletype sh
augroup END
