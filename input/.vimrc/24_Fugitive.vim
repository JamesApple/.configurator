Plug 'tpope/vim-fugitive'


" (g)it
nnoremap <leader>gc :Gcommit<CR>|   " (c)ommit
nnoremap <leader>gm :Gmerge<Space>| " (m)erge
nnoremap <leader>gf :Gfetch<Space>| " (f)etch
nnoremap <leader>gl :Glog<CR>|      " (l)og
nnoremap <leader>gd :Gvdiff<CR>|    " (d)iff
nnoremap <leader>gbl :Gblame<CR>|    " (b)lame

nnoremap <space>ga :Dispatch! git add %:p<CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gbr :Git branch<Space>
nnoremap <space>gc :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

nnoremap <Leader>g- :Silent Git stash<CR>:e<CR>
nnoremap <Leader>g+ :Silent Git stash pop<CR>:e<CR>

nnoremap <leader>gC :call ReviewLastCommit()<CR>| " last (C)ommit 

xnoremap dp :diffput<CR>
xnoremap do :diffget<cr>

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
