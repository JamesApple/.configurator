Plug 'SirVer/ultisnips' " Yeah it's snippets
Plug 'honza/vim-snippets'


nnoremap <leader>se :UltiSnipsEdit<CR>| " Edit snippets for current FT


let g:UltiSnipsSnippetsDir = '~/configurator/snippets'
let g:UltiSnipsSnippetDirectories=[$HOME.'/configurator/snippets']
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsListSnippets = '<nop>'
let g:ulti_expand_or_jump_res = 0
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

