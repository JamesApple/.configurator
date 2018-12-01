Plug 'jiangmiao/auto-pairs'                                         " Auto add closing parens and brackets
Plug 'Valloric/MatchTagAlways', { 'for': [ 'html', 'vue', 'jsx' ] } " Always highlight matching xml/html tags

Plug 'tpope/vim-commentary'                                         " Comment with gc
Plug 'tpope/vim-endwise'                                            " Add end after ruby
nmap o A<CR>

Plug 'tpope/vim-unimpaired'                                         " Many helper functions
Plug 'tpope/vim-repeat'                                             " Many helper functions
Plug 'tpope/vim-obsession',     { 'on': 'Obsession' }               " Many helper functions
Plug 'wellle/targets.vim'
Plug 'tommcdo/vim-exchange'

Plug 'google/vim-searchindex'                                       " Adds search numbers
Plug 'editorconfig/editorconfig-vim'                                " Set indentation and etc based on project
Plug 'AndrewRadev/splitjoin.vim'                                    " gJ gS to split and join expressions

Plug 'djdt/pyparens.nvim',      { 'do': ':UpdateRemotePlugins' }    " Highlight the braces I'm currently inside
let g:pyparens_hl_col_group = 'FoldColumn'

Plug 'tpope/vim-speeddating'

Plug 'tpope/vim-rbenv',         { 'for': ['ruby'] }                 " Ruby versioning
Plug 'tpope/vim-bundler',       { 'for': ['ruby'] }                 " Ruby gems helper

Plug 'tpope/vim-sleuth'                                             " Never touch indent settings

Plug 'tpope/vim-apathy'                                             " Path shenanigans
Plug 'tpope/vim-scriptease'                                         " Vim editing superpowers
