Plug 'JamesApple/ultisnips' " Yeah it's snippets

" Add python helpers
 py import sys; sys.path.append("~/configurator/snippets/python_helpers")

" LONG LIVED ECHO MESSAGE:
" Not meant to keep the message there long. Just enough to prevent immediate
" redraw in scripts
function! Echo(msg)
  echo a:msg
  let g:PersistentEcho = a:msg
  return ''
endfunction
let g:PersistentEcho = ''
if &ut>200|let &ut=200|endif
au CursorHold * if PersistentEcho!=''|echo PersistentEcho|let PersistentEcho=''|endif

let g:UltiSnipsSnippetsDir = '~/configurator/snippets'
let g:UltiSnipsSnippetDirectories=[$HOME.'/configurator/snippets']
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsListSnippets = '<nop>'
let g:ulti_expand_or_jump_res = 0
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

