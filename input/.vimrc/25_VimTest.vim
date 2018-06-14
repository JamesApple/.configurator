Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'


nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>to :TestVisit<CR>


let test#strategy = "dispatch"
let test#strategy = {
  \ 'nearest': 'neovim',
  \ 'file':    'neovim',
  \ 'suite':   'dispatch',
\}

let test#ruby#rspec#file_pattern = '_spec\.rb'
let test#ruby#rspec#executable = 'rspec'
let test#ruby#rspec#options = {
  \ 'nearest': '--format documentation',
  \ 'file':    '--format documentation',
  \ 'suite':   '--format progress --tag "~slow"',
\}
