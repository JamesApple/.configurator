Plugin 'mbbill/undotree'
let g:undotree_ShortIndicators = 1
nmap <leader>u :UndotreeToggle<CR>



if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

