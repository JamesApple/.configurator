Plug 'w0rp/ale'


nnoremap <silent><leader>f :ALEFix<CR>


let g:ale_sign_column_always = 1  " Keep ale from sliding in and out
let g:ale_sign_error = "\uf421"   " Nerdfont error
let g:ale_sign_warning = "\uf12a" " Nerdfont warning
let g:ale_set_highlights = 0      " Don't show inline highlights for issus
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\   'vue': ['eslint'],
\}
