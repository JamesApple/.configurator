" Load .zshenv aliases only
set shell=zsh

if has('nvim')
  let g:python_host_prog =  '/usr/local/var/pyenv/versions/2.7.10/bin/python'
  let g:python3_host_prog = '/usr/local/var/pyenv/versions/3.5.0/bin/python'
endif

if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
  let $EDITOR="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
endif

