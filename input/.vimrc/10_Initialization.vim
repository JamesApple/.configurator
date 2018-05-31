" Load .zshenv aliases only
set shell=zsh

if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
  let $EDITOR="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
endif
