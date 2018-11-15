Plug 'sheerun/vim-polyglot'                                             " Kitchen Sink
Plug 'andreimaxim/vim-io', { 'for': 'io' }                              " IO
Plug 'ekalinin/Dockerfile.vim', { 'for': 'docker' }                     " Docker

Plug 'hail2u/vim-css3-syntax', { 'for': ['scss', 'css', 'jsx', 'vue'] } " CSS3
Plug 'ap/vim-css-color', { 'for': ['scss', 'vue', 'jsx', 'css'] }       " CSS Color Highlights
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'vue'] }            " SCSS
Plug 'othree/html5.vim', { 'for': ['html', 'jsx', 'vue'] }              " HTML5

Plug 'tpope/vim-rails', { 'for': ['ruby'] }                             " Rails
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

Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
" Pangloss JS settings
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1
