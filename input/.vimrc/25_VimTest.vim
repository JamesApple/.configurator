Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'


nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tF :TestSuite -strategy=neovim --format documentation<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tS :TestSuite -strategy=neovim --format documentation<CR>
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tl :TestLast<CR>
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
      \ 'nearest': 'neovim',
      \ 'file':    'dispatch_background',
      \ 'suite':   'dispatch_background',
      \}

let test#ruby#rspec#file_pattern = '_spec\.rb'
let test#ruby#rspec#executable = 'rspec'
let test#ruby#rspec#options = {
      \ 'nearest': '--format documentation',
      \ 'file':    '--format progress',
      \ 'suite':   '--format progress --tag "~slow"',
      \}

"  \ 'suite':   '--require ~/.rspec_support/quickfix_formatter.rb --format QuickfixFormatter --out quickfix.out --tag "~slow"',
