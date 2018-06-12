Plugin 'w0rp/ale'
" Ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '!'
let g:ale_sign_warning = '~'
" highlight ALEWarning ctermbg=Green
" Add custom highlights please
let g:ale_set_highlights = 0
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\   'vue': ['eslint'],
\}

nnoremap <silent><leader>f :ALEFix<CR>
