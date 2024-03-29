" Mandatory plumbing for typescript build
function! BuildTS(info)
  if a:info.status == 'installed' || a:info.force || a:info.status == 'updated'
    !yarn global add typescript
    !./install.sh
    UpdateRemotePlugins
  endif
endfunction

" Completion Tooling
Plug 'Shougo/deoplete.nvim',        { 'do': ':UpdateRemotePlugins' }                    " Completion Manager
Plug 'Shougo/echodoc.vim'                                                               " Echo method signatures to command window
Plug 'ervandew/supertab'                                                                " Make tab completion easier

" Completion Sources
Plug 'Shougo/neco-syntax'                                                               " Completion from syntax file
Plug 'Shougo/neco-vim',             { 'for': ['vim'] }                                  " Vim Source
Plug 'mhartington/nvim-typescript'
Plug 'rust-lang/rust.vim', { 'for': ['rust'] }
Plug 'racer-rust/vim-racer', { 'for': ['rust'] }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }


" Getting solargraph to work:
"
" FIRST TIME:
" solargraph download-core 
"       Installs docs for current directories runtime ruby version
"
" yard config --gem-install-yri
"
" FREQUENTLY:
" yard gems
" ALWAYS:
" solargraph socket
let g:LanguageClient_autoStop = 0
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['tcp://localhost:7658'],
    \ 'javascript': ['yarn', 'flow', 'lsp', '--from', './node_modules/.bin'],
    \ 'javascript.jsx': ['yarn', 'flow', 'lsp', '--from', './node_modules/.bin'],
    \ 'Dockerfile': ['docker-langserver', '--stdio'],
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'go': ['go-langserver', '-gocodecompletion']
    \ }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_rootMarkers = ['.flowconfig']
let g:LanguageClient_loggingLevel = 'INFO'


set completeopt+=menuone,noinsert,noselect " Completion styles
set completeopt-=preview                   " Don't pop up terrible window
set cmdheight=2                            " Needed for echodoc to display completion docs

let g:SuperTabDefaultCompletionType = "<c-n>" " Default to complete down the list

let g:echodoc_enable_at_startup=1
let g:echodoc#type = 'signature'
let g:deoplete#enable_at_startup = 1

let g:nvim_typescript#max_completion_detail = 15
let g:nvim_typescript#type_info_on_hold = 1

let g:racer_cmd = "/Users/jamesapple/.cargo/bin/racer"
let g:racer_experimental_completer = 1

" Languages with good language servers
au Filetype javascript,ruby nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
au Filetype javascript,ruby nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>


au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
