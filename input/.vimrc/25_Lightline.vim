Plug 'itchyny/lightline.vim'
Plug 'ajmwagar/lightline-deus'

let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'left': [ 
      \     [ 'mode', 'paste' ]
      \   ],
      \   'right': [
      \     [ 'lineinfo' ],
      \     [ 'filename', 'fileformat', 'filetype' ]
      \ ]
      \ },
      \ 'component_function': {
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineFilename'
      \ },
      \ 'separator': { 'left': '', 'right': "\ue0be" },
      \ 'subseparator': { 'left': "\ue0bd ", 'right': " \ue0bf" }
      \ }
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

function! LightLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "\ue0a2"
  else
    return ""
  endif
endfunction


function! LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction


function! LightLineFugitive()
  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction


function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction
