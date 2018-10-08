Plug 'w0rp/ale'


nnoremap <silent><leader>f :ALEFix<CR>


let g:ale_sign_column_always = 1  " Keep ale from sliding in and out
let g:ale_sign_error = "\uf421"   " Nerdfont error
let g:ale_sign_warning = "\uf12a" " Nerdfont warning
" let g:ale_set_highlights = 0      " Don't show inline highlights for issus
augroup ALENotifications
  autocmd!
  autocmd User ALEFixPre     echo 'Fixing...'
  autocmd User ALEFixPost    echo 'Fixing done!'
augroup END

let g:ale_linters = {
\  'javascript': ['flow', 'eslint']
\}
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = 'X' " could use emoji
let g:ale_sign_warning = '?' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
let g:ale_echo_msg_format = '%linter% says %s'
" nnoremap <leader>an :ALENextWrap<cr>
" nnoremap <leader>ap :ALEPreviousWrap<cr>

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\   'vue': ['eslint'],
\   'json': ['prettier'],
\   'scss': ['stylelint'],
\   'typescript': ['tslint']
\}
