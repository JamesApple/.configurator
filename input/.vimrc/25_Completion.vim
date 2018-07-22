" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
"https://github.com/ramitos/jsctags
" https://medium.com/@jrwillette88/tern-why-it-breaks-and-how-to-fix-it-8d1677df05f9
" let g:deoplete#enable_profile = 1
" call deoplete#custom#source('tern', 'debug_enabled', 1)<CR>

function! BuildTS(info)
  if a:info.status == 'installed' || a:info.force || a:info.status == 'updated'
    !yarn global add typescript
    !./install.sh
    UpdateRemotePlugins
  endif
endfunction


Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Deoplete Sources
Plug 'Shougo/neco-syntax' 
Plug 'Shougo/neco-vim'
Plug 'Shougo/echodoc.vim'
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install -g tern' }
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }
Plug 'mhartington/nvim-typescript', { 'for': 'typescript', 'do': function('BuildTS') }

Plug 'ervandew/supertab'


set completeopt+=menuone,noinsert,noselect
set completeopt-=preview

let g:SuperTabDefaultCompletionType = "<C-p"
set cmdheight=2
let g:deoplete#enable_at_startup = 1
let deoplete#tag#cache_limit_size = 5000000 " Increase tag cache size for mega projects
let g:deoplete#auto_complete_delay = 0
let g:echodoc_enable_at_startup=1
let g:deoplete#enable_camel_case = 1
" Tern
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]

nnoremap <leader>se :UltiSnipsEdit<CR>
" let g:SuperTabClosePreviewOnPopupClose = 1

