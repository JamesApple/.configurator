augroup filetypedetect
    au BufRead,BufNewFile .tern-project setfiletype json
    au BufRead,BufNewFile Procfile setfiletype yaml
augroup END
