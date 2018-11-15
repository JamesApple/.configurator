" Use <C-w>z to zoom in and zoom out by leaving the window or tapping again

function! UnzoomWindow()
  if !exists('w:zoomed')
    echo 'Could not unzoom'
  else
    unlet w:zoomed
    wincmd =
  endif
endfunction

function! ZoomWindow()
  if exists('w:zoomed')
    call UnzoomWindow()
  else
    let w:zoomed = 'TRUE'
    wincmd |
    wincmd _
  endif
endfunction

autocmd  WinLeave,TabLeave * if exists('w:zoomed') | silent! call UnzoomWindow() | endif


nnoremap <silent> <C-w>z :call ZoomWindow()<CR>

