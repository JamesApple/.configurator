" Plug 'sheerun/vim-polyglot'                                             " Kitchen Sink
Plug 'ekalinin/Dockerfile.vim', { 'for': 'docker' }                     " Docker
Plug 'hail2u/vim-css3-syntax', { 'for': ['scss', 'css', 'jsx', 'tsx', 'vue'] } " CSS3
Plug 'ap/vim-css-color', { 'for': ['scss', 'vue', 'jsx', 'tsx', 'css'] }       " CSS Color Highlights
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'vue'] }            " SCSS
Plug 'othree/html5.vim', { 'for': ['html', 'jsx', 'tsx', 'vue'] }              " HTML5

Plug 'fatih/vim-go', { 'for': ['go'] }

Plug 'tpope/vim-rails', { 'for': ['ruby'] }                             " Rails
Plug 'noprompt/vim-yardoc', { 'for': ['ruby'] }
nnoremap <leader>c  :Console<CR>
Plug 'tpope/vim-haml', { 'for': ['haml'] }                              " HAML
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby'] }                           " Ruby

Plug 'HerringtonDarkholme/yats.vim', { 'for': ['typescript'] }          " TS

Plug 'othree/javascript-libraries-syntax.vim'                           " JS Frameworks
Plug 'jparise/vim-graphql'
Plug 'elzr/vim-json'
let g:used_javascript_libs = 'underscore,vue,jquery,react'

" Trialling new syntax
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'vue'] }                " JS
" Plug 'mxw/vim-jsx', { 'for': ['jsx'] }                                  " JSX
" Plug 'peitalin/vim-jsx-typescript', { 'for': ['tsx'] } 
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }
Plug 'mxw/vim-jsx', { 'for': ['jsx'] }
" Pangloss JS settings
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1

au Filetype go set tabstop=2 | set nolist
