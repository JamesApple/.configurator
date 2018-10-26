Plug 'plasticboy/vim-markdown'

nnoremap <silent> <leader>?? :e ~/cronos/index.md<CR> | " Index
nnoremap <silent> <leader>s? :Files ~/cronos/<CR>

" I want this to work
" autocmd FileType markdown nnoremap <buffer> gf <Plug>Markdown_EditUrlUnderCursor


let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1

let g:vim_markdown_fenced_languages = [ 'csharp=cs' ]
