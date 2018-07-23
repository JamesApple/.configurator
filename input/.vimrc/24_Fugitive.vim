Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'sodapopcan/vim-twiggy', { 'on': ['Twiggy'] } " Git branch fugitive plugin
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'jreybert/vimagit', { 'on': ['Magit'] }


" Branch
nnoremap <leader>gb :Twiggy<CR>|    " (br)anch
" nnoremap <leader>gbl :Gblame<CR>|    " (bl)ame, I don't use this very much

" Commit
nnoremap <space>gc :!git commit -m ''<Left>

" Commit browser
nnoremap <leader>gl :Gitv!<CR>
nnoremap <leader>gL :Gitv<CR>

" Add folder / File or interactive staging
nnoremap <space>ga :Magit<CR>
nnoremap <space>gA :Dispatch! git add %:p<CR>

nnoremap <space>gs :Gstatus<CR>

nnoremap <leader>gd :Gvdiff<CR>

nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

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

