if has("persistent_undo")
  Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' } " Better file history than git


  nmap <leader>u :UndotreeToggle<CR>


  let g:undotree_ShortIndicators = 1
  set undodir=~/.undodir/
  set undofile
endif
