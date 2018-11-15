if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

if filereadable(expand("./.vimrc.local"))
  source ./.vimrc.local
endif

" Refresh file when vim gets focus
augroup ReloadcurrentFile
  autocmd!
  autocmd FocusGained,BufEnter * checktime 
augroup END

" Disable cursor line in nonselected buffers
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

