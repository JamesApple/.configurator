" Makes Y consistent with D
nnoremap Y y

" Invert mark jumping keys
nnoremap ' `
nnoremap ` '

" Keep search results in center of screen
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" Make C-w the same in insert and normal
inoremap <C-w><Up> <ESC><C-w><Up>
inoremap <C-w><Down> <ESC><C-w><Down>
inoremap <C-w><Right> <ESC><C-w><Right>
inoremap <C-w><Left> <ESC><C-w><Left>

nnoremap <C-Left> <C-w><Left>
nnoremap <C-Right> <C-w><Right>
nnoremap <C-Up> <C-w><Up>
nnoremap <C-Down> <C-w><Down>
nnoremap <silent> <C-w>t :tabnew<CR>

" Indent entire file
nnoremap == mzgg=G`z

" Fix syntax in long files
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

"  Vim Editing
nmap <silent> <leader>vr :so $MYVIMRC<CR>| "(v)im (r)eload
"(v)im (c)ompile
nmap <silent> <leader>vc 
      \  :! cd ~/configurator && 
      \  ./configurator<CR>
      \  :so $MYVIMRC<CR>
" (v)im (C)ompile and install
nmap <silent> <leader>vC 
      \  :! cd ~/configurator && .
      \  /configurator<CR>
      \  :so $MYVIMRC<CR>
      \  :PlugInstall<CR>

" Get the current highlight group. Useful for then remapping the color
map <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
map <leader>hi! :so $VIMRUNTIME/syntax/hitest.vim<CR>| " Output all current highlights

