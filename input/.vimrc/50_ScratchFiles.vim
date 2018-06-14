nnoremap  <leader>? :call ToggleHelp()<CR>
nnoremap ?  :call ToggleTodo()<CR>


function! ToggleHelp()
  let filename='.vimhelp'
  let currentFilename=expand('%:t')
  if filename == currentFilename
    execute 'w | Bclose'
  else
    execute 'e ~/'.filename
    execute 
  endif
endfunction
autocmd BufNewFile,BufRead .vimhelp set syntax=help | set ft=help

function! ToggleTodo()
  let filename='.todo.md'
  let currentFilename=expand('%:t')
  if filename == currentFilename
    execute 'w | Bclose'
  else
    execute 'e ~/'.filename
    execute 'set foldmethod=manual'
  endif
endfunction

