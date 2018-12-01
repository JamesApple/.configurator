Plug 'SirVer/ultisnips' " Yeah it's snippets

" Add python helpers
 py import sys; sys.path.append("~/configurator/snippets/python_helpers")

" PersistentEcho() - super-sticky echo message.
" PersistentEcho() echoes message that refuses
" to disappear that simply. This is really weird intrusive trick, but sometimes
" echo from a script disappears unexplainably no matter what other solution I tried.
" Don't use this in external scripts please; this is for your internal uses only.
func! PersistentEcho(msg)
  echo a:msg
  let g:PersistentEcho=a:msg
endfun
let g:PersistentEcho=''
if &ut>200|let &ut=200|endif
au CursorHold * if PersistentEcho!=''|echo PersistentEcho|let PersistentEcho=''|endif

nnoremap <leader>se :UltiSnipsEdit<CR>| " Edit snippets for current FT

function! Echo(message)
  call PersistentEcho(a:message)
  return ''
endfunction


let g:UltiSnipsSnippetsDir = '~/configurator/snippets'
let g:UltiSnipsSnippetDirectories=[$HOME.'/configurator/snippets']
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsListSnippets = '<nop>'
let g:ulti_expand_or_jump_res = 0
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

