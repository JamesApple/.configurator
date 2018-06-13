" set shell=zsh 

set shell=/bin/bash " Gitgutter breaks with zsh

let g:mapleader = "\<Space>"


if has('nvim')
  let g:python_host_prog =  '/usr/local/var/pyenv/versions/2.7.10/bin/python'
  let g:python3_host_prog = '/usr/local/var/pyenv/versions/3.5.0/bin/python'
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

  " Integrated Terminal mappings
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
  " Use normal ctrlw move commands to navigate out of terminal
  tnoremap <C-w><Up> <C-\><C-n><C-w>k
  tnoremap <C-w><Down> <C-\><C-n><C-w>j
  tnoremap <C-w><Right> <C-\><C-n><C-w>l
  tnoremap <C-w><Left> <C-\><C-n><C-w>h
endif

if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
  let $EDITOR="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
endif

