" set shell=/bin/bash " Gitgutter breaks with zsh
set shell=zsh
let g:mapleader = "\<Space>"

" For neovim only
if has('nvim')
  let g:python_host_prog =  '/usr/local/var/pyenv/versions/2.7.10/bin/python'
  let g:python3_host_prog = '/usr/local/var/pyenv/versions/3.5.0/bin/python'

  " Display cursor in terminal
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

  " Use normal ctrlw move commands to navigate out of terminal
  tnoremap <C-w>k <C-\><C-n><C-w>k
  tnoremap <C-w>j <C-\><C-n><C-w>j
  tnoremap <C-w>l <C-\><C-n><C-w>l
  tnoremap <C-w>h <C-\><C-n><C-w>h
  tnoremap <Esc> <C-\><C-n>| " Exit terminal with escape
  autocmd BufWinEnter,WinEnter term://* startinsert| " Enter terminal in insert


  " NVR lets us open splits from terminal panes instead of russian nesting
  if executable('nvr')
    let $VISUAL="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
    let $EDITOR="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
  endif
endif


