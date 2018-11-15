Plug 'tpope/vim-fugitive'                          " The king of all git plugins
Plug 'tpope/vim-rhubarb'                           " Github helper for Gbrowse with fugitive
Plug 'sodapopcan/vim-twiggy', { 'on': ['Twiggy'] } " Git branch fugitive plugin for easy tracking
Plug 'gregsexton/gitv', {'on': ['Gitv']}           " View fugitive diffs based on log for individual files or whole project
Plug 'jreybert/vimagit', { 'on': ['Magit'] }       " Interactive staging

let g:twiggy_local_branch_sort = 'mru'

" Branch
nnoremap <leader>gb :Twiggy<CR>|    " (br)anch

" Commit
nnoremap <leader>gc :Gcommit<CR>

" Commit browser
nnoremap <leader>gl :Gitv!<CR>
nnoremap <leader>gL :Gitv<CR>

" Add folder / File or interactive staging
nnoremap <leader>ga :Magit<CR>
nnoremap <leader>gA :!git add %<CR>| ":Dispatch! git add %:p<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

" TODO: Add to autocmd pls
xnoremap dp :diffput<CR>
xnoremap do :diffget<cr>

" FZF Required, I'm trialing Gitv instead currently
" nnoremap <silent><leader>gs :GFiles?<CR>| " Search changed files by git Status
" nnoremap <silent><leader>gl :Commits<CR>| " Search all commits
" nnoremap <silent><leader>gL :BCommits<CR>| " Search current file commits

let g:Gitv_DoNotMapCtrlKey = 1
let g:Gitv_CustomMappings = {
      \'quit': 'q',
      \'update': 'u',
      \'toggleAll': 'a',
      \'nextBranch': 'x',
      \'prevBranch': 'X',
      \'nextRef': 'r',
      \'prevRef': 'R',
      \'editCommit': [ '<CR>', { 'keys': '<LeftMouse>', 'prefix': '<LeftMouse>' } ],
      \'editCommitDetails': 'i',
      \'prevCommit': 'J',
      \'nextCommit': 'K',
      \'splitCommit': 'o',
      \'vertSplitCommit': 's',
      \'tabeCommit': 'O',
      \'diff': 'D',
      \'vdiff': 'D',
      \'stat': 'S',
      \'vstat': 'S',
      \'checkout': 'co',
      \'merge': '<leader>m',
      \'vmerge': 'm',
      \'cherryPick': 'cp',
      \'vcherryPick': 'cp',
      \'reset': 'rb',
      \'vreset': 'rb',
      \'resetSoft': 'rbs',
      \'vresetSoft': 'rbs',
      \'resetHard': 'rbh',
      \'vresetHard': 'rbh',
      \'revert': 'rev',
      \'vrevert': 'rev',
      \'delete': 'd',
      \'vdelete': 'd',
      \'rebase': 'grr',
      \'vrebase': 'grr',
      \'rebasePick': 'grP',
      \'vrebasePick': 'grP',
      \'rebaseReword': 'grR',
      \'vrebaseReword': 'grR',
      \'rebaseMarkEdit': 'grF',
      \'vrebaseMarkEdit': 'grF',
      \'rebaseSquash': 'grF',
      \'vrebaseSquash': 'grF',
      \'rebaseFixup': 'grF',
      \'vrebaseFixup': 'grF',
      \'rebaseExec': 'grF',
      \'vrebaseExec': 'grF',
      \'rebaseDrop': 'grF',
      \'vrebaseDrop': 'grF',
      \'rebaseAbort': 'gra',
      \'rebaseToggle': 'grs',
      \'vrebaseToggle': 'grs',
      \'rebaseSkip': 'grn',
      \'rebaseContinue': 'grc',
      \'rebaseEdit': 'gre',
      \'bisectStart': 'gbs',
      \'vbisectStart': 'gbs',
      \'bisectGood': 'gbg',
      \'vbisectGood': 'gbg',
      \'bisectBad': 'gbb',
      \'vbisectBad': 'gbb',
      \'bisectSkip': 'gbn',
      \'vbisectSkip': 'gbn',
      \'bisectReset': 'gbr',
      \'bisectLog': 'gbl',
      \'bisectReplay': 'gbp',
      \'head': 'P',
      \'parent': 'p',
      \'toggleWindow': 'gw',
      \'git': 'git',
      \'yank': 'yc'
      \}



augroup  fugitive_buffers
  " Delete fugitive buffers
  autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END

