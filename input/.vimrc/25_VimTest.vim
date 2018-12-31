Plug 'tpope/vim-dispatch' " Asynchronous jobs
Plug 'janko-m/vim-test'   " Asynchronous multi-language testing


nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tF :TestFile<CR>
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tp :TestLast<CR>
nnoremap <leader>to :TestVisit<CR>


" Allow r to refresh quickfix window
nnoremap <leader>Q :Copen<CR>
augroup  colorscheme_definition
  autocmd BufReadPost qf :Copen<CR>
  autocmd BufReadPost quickfix nnoremap <buffer> r :Copen<CR>
  autocmd BufReadPost quickfix nnoremap <buffer> <C-n> :cn<CR>
augroup END

let test#strategy = "dispatch"
let test#strategy = {
      \ 'nearest': 'dispatch',
      \ 'file':    'dispatch',
      \ 'suite':   'dispatch_background',
      \}

let test#javascript#jest#executable = 'yarn jest'

let test#ruby#rspec#file_pattern = '_spec\.rb'
let test#ruby#rspec#executable = 'bundle exec rspec'
let test#ruby#rspec#options = {
      \ 'nearest': '--format documentation',
      \ 'file':    '--format progress',
      \ 'suite':   '--format progress',
      \}

