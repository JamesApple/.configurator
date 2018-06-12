Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsUsePythonVersion = 3
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-n>"
" let g:UltiSnipsJumpBackwardTrigger="<c-p>"
" let g:UltiSnipsEditSplit="vertical"


nnoremap <leader>se :UltiSnipsEdit<CR>

let g:UltiSnipsSnippetsDir = '~/.nvim/UltiSnips'
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsListSnippets = '<nop>'
let g:UltiSnipsExpandTrigger = '<c-l>'
let g:UltiSnipsJumpForwardTrigger = '<c-l>'
let g:UltiSnipsJumpBackwardTrigger = '<c-b>'
let g:ulti_expand_or_jump_res = 0
