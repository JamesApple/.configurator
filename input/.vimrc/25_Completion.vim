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
Plug 'mhartington/nvim-typescript', { 'for': ['typescript'], 'do': function('BuildTS') } " Incredible typescript source
Plug 'wokalski/autocomplete-flow',  { 'for': ['javascript', 'javascript.jsx'] }         " Easy flow integration

set completeopt+=menuone,noinsert,noselect " Completion styles
set completeopt-=preview                   " Don't pop up terrible window
set cmdheight=2                            " Needed for echodoc to display completion docs

let g:SuperTabDefaultCompletionType = "<c-n>" " Default to complete down the list

let g:echodoc_enable_at_startup=1

let g:deoplete#enable_at_startup = 1
let deoplete#tag#cache_limit_size = 5000000 " Increase tag cache size for mega projects
let g:deoplete#enable_camel_case = 1

let g:nvim_typescript#max_completion_detail = 15
let g:nvim_typescript#type_info_on_hold = 1
