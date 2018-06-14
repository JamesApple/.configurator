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

" Swap between tabs
nmap <leader>1 1gt
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt
nmap <leader>6 6gt
nmap <leader>7 7gt
nmap <leader>8 8gt
nmap <leader>9 9gt

" Make C-w the same in insert and normal
inoremap <C-w><Up> <ESC><C-w><Up>
inoremap <C-w><Down> <ESC><C-w><Down>
inoremap <C-w><Right> <ESC><C-w><Right>
inoremap <C-w><Left> <ESC><C-w><Left>

" Arrow key tab and buffer nav
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Up> :bnext<CR>
nnoremap <C-Down> :bprevious<CR>
nnoremap <silent> <C-w>t :tabnew<CR>

" Replace within block
nnoremap <leader>R :'{,'}s/\<<c-r><c-w>\>//g<left><left>
xnoremap <leader>R y:'{,'}s/<c-r><c-0>//g<left><left>

" Replace in entire file
nnoremap <leader>r :%s/\<<c-r><c-w>\>//g<left><left>
xnoremap <leader>r y:%s/<c-r><c-0>//g<left><left>

" Indent entire file
nnoremap == mzgg=G`z

" Fix syntax in long files
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

"Clear current search highlight by double tapping //
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

