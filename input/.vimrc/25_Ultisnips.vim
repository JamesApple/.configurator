Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


nnoremap <leader>se :UltiSnipsEdit<CR>


let g:UltiSnipsSnippetsDir = '~/.nvim/UltiSnips'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.nvim/UltiSnips']
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsListSnippets = '<nop>'
let g:UltiSnipsExpandTrigger = '<c-x>'
let g:UltiSnipsJumpForwardTrigger = '<c-l>'
let g:UltiSnipsJumpBackwardTrigger = '<c-b>'
let g:ulti_expand_or_jump_res = 0
