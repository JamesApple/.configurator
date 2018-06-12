Plugin 'tpope/vim-fugitive'

nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gm :Gmerge<Space>
nnoremap <leader>gf :Gfetch<Space>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gb :Gblame<CR>

nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gR :Gread<space>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gW :Gwrite!<CR>

nnoremap <leader>gC :call ReviewLastCommit()<CR>

" Map .. to go up in the tree
autocmd User fugitive
      \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
      \   nnoremap <buffer> .. :edit %:h<CR> |
      \ endif

autocmd BufReadPost fugitive://* set bufhidden=delete| " Delete fugitive buffers



function! ReviewLastCommit()
  if exists('b:git_dir')
    Gtabedit HEAD^{}
    nnoremap <buffer> <silent> q :<C-U>bdelete<CR>
  else
    echo 'No git a git repository:' expand('%:p')
  endif
endfunction
