" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
nnoremap <leader>se :UltiSnipsEdit<CR>


set completeopt=longest,menuone,preview
let g:UltiSnipsSnippetsDir = '~/.nvim/UltiSnips'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.nvim/UltiSnips']
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsListSnippets = '<nop>'
let g:UltiSnipsExpandTrigger = '<c-x>'
let g:ulti_expand_or_jump_res = 0

let g:SuperTabClosePreviewOnPopupClose = 1

" let g:tern#command = ['tern']
" let g:tern#arguments = ['--persistent']
" let g:tern#command = ["node", expand('<sfile>:h') . '/Users/jamesapple/.nvm/versions/node/v8.11.2/bin/node', '--no-port-file --persistent']

let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]


" autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
