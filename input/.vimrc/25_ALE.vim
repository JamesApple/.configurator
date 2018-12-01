Plug 'w0rp/ale' " Linting


nnoremap <silent><leader>f :ALEFix<CR>   | " Autofix
nnoremap <leader>an :ALENextWrap<cr>     | " Next issue
nnoremap <leader>ap :ALEPreviousWrap<cr> | " Previous issue

" I never use the native maps for [[ so it's put to better use in linting
nnoremap ]] :ALENext<CR>|
nnoremap [[ :ALELast<CR>|

let g:ale_sign_column_always = 1  " Keep ale from sliding in and out
let g:ale_sign_error = "\uf421"   " Nerdfont error
let g:ale_sign_warning = "\uf12a" " Nerdfont warning
let g:ale_set_highlights = 0      " Don't show inline highlights for issus

let g:ale_sign_error = 'X' " could use emoji
let g:ale_sign_warning = '?' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
let g:ale_echo_msg_format = '%linter% says %s'

let g:ale_linters = {
      \ 'javascript': ['flow', 'eslint'],
      \   'markdown': ['proselint', 'write-good', 'mdl']
      \}

let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \   'ruby': ['rubocop'],
      \   'vue': ['prettier'],
      \   'json': ['prettier'],
      \   'scss': ['stylelint'],
      \   'typescript': ['tslint']
      \}

highlight clear ALEErrorSign   " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)

augroup ALENotifications
  autocmd!
  autocmd User ALEFixPre     echo 'Fixing...'
  autocmd User ALEFixPost    echo 'Fixing done!'
augroup END
