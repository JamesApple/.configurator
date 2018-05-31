"---You have to install vundle manually into /.vim/bundle/Vundle.vim------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" --- Session Persistence ---
Plugin 'tpope/vim-obsession'
Plugin 'mbbill/undotree'
Plugin 'majutsushi/tagbar'

" --- Languages ---
Plugin 'sheerun/vim-polyglot'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-haml'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'andreimaxim/vim-io'

" --- External Integrations ---
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'

" --- Autocomplete / Generation ---
" Plugin 'Valloric/YouCompleteMe'
"Plugin 'craigemery/vim-autotag'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'docunext/closetag.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'

" --- Symbols ---
Plugin 'w0rp/ale'
"Plugin 'airblade/vim-gitgutter'
Plugin 'ShowMarks'

" --- Visuals ---
Plugin 'itchyny/lightline.vim'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'mgee/lightline-bufferline'
" Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'google/vim-searchindex'

" --- File Navigation ---
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'justinmk/vim-dirvish'

" --- Text Navigation ---
Plugin 'tpope/vim-unimpaired'
Plugin 'justinmk/vim-sneak'

" --- Misc ---
Plugin 'editorconfig/editorconfig-vim'
"Plugin 'mhinz/vim-startify'
Plugin 'kristijanhusak/vim-carbon-now-sh'

" --- More plumbing for Vundle ---
call vundle#end()            " required
filetype plugin indent on    " required
