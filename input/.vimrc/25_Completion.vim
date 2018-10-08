" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
"https://github.com/ramitos/jsctags
" https://medium.com/@jrwillette88/tern-why-it-breaks-and-how-to-fix-it-8d1677df05f9
" Debug Commands
" let g:deoplete#enable_profile = 1
" call deoplete#custom#source('tern', 'debug_enabled', 1)<CR>

" Mandatory plumbing for typescript build
function! BuildTS(info)
  if a:info.status == 'installed' || a:info.force || a:info.status == 'updated'
    !yarn global add typescript
    !./install.sh
    UpdateRemotePlugins
  endif
endfunction

" Completion Tooling
Plug 'Shougo/deoplete.nvim', " Completion Manager
      \{ 'do': ':UpdateRemotePlugins' } 
Plug 'Shougo/echodoc.vim'
Plug 'ervandew/supertab'
" Completion Sources
Plug 'Shougo/neco-syntax'           " Completion from syntax file
Plug 'Shougo/neco-vim',             " Vim Source
      \{ 'for': ['vim'] }
" Plug 'carlitux/deoplete-ternjs',    " Javascript source
"       \{ 'for': ['javascript', 'javascript.jsx'], 
"       \'do': 'yarn global add tern' }
" Plug 'ternjs/tern_for_vim'
Plug 'mhartington/nvim-typescript', " Incredible typescript source
      \{ 'for': ['typescript']
      \'do': function('BuildTS') }
Plug 'wokalski/autocomplete-flow', { 'for': ['javascript', 'javascript.jsx'] }

let g:SuperTabDefaultCompletionType = "<c-n>"
set completeopt+=menuone,noinsert,noselect " Completion styles
set completeopt-=preview " Don't pop up terrible window
set cmdheight=2 " Needed for echodoc to display completion docs

let g:echodoc_enable_at_startup=1

let g:deoplete#enable_at_startup = 1
let deoplete#tag#cache_limit_size = 5000000 " Increase tag cache size for mega projects
let g:deoplete#auto_complete_delay = 500
let g:deoplete#enable_camel_case = 1

let g:nvim_typescript#max_completion_detail = 15
let g:nvim_typescript#type_info_on_hold = 1

" " Tern
" let g:deoplete#sources#ternjs#types = 1
" let g:deoplete#sources#ternjs#docs = 1
" let g:deoplete#sources#ternjs#filetypes = [
"                 \ 'jsx',
"                 \ 'javascript.jsx',
"                 \ 'vue',
"                 \ ]
" let g:tern#command = ["tern"]
" let g:tern#arguments = ["--persistent"]
