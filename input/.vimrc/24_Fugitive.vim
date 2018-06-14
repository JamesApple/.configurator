Plug 'tpope/vim-fugitive'


" (g)it
nnoremap <leader>gc :Gcommit<CR>|   " (c)ommit
nnoremap <leader>gm :Gmerge<Space>| " (m)erge
nnoremap <leader>gf :Gfetch<Space>| " (f)etch
nnoremap <leader>gl :Glog<CR>|      " (l)og
nnoremap <leader>gd :Gvdiff<CR>|    " (d)iff
nnoremap <leader>gb :Gblame<CR>|    " (b)lame

nnoremap <leader>gC :call ReviewLastCommit()<CR>| " last (C)ommit 


augroup  fugitive_buffers
  " Map .. to go up in trees and blobs
  autocmd User fugitive
        \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
        \   nnoremap <buffer> .. :edit %:h<CR> |
        \ endif

  " Delete fugitive buffers
  autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END


" Open last commit message
function! ReviewLastCommit()
  if exists('b:git_dir')
    Gtabedit HEAD^{}
    nnoremap <buffer> <silent> q :<C-U>bdelete<CR>
  else
    echo 'No git a git repository:' expand('%:p')
  endif
endfunction
