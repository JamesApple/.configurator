" Multiple indents
vnoremap > >gv
vnoremap < <gv

" Makes Y consistent with D
nnoremap Y y$ 

" Invert mark jumping keys
nnoremap ' `
nnoremap ` '

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Move to first character at SOL above
nnoremap <Backspace> -

" Move around using C-h|j|k|l in insert mode
" inoremap <C-h> <Left>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Right>

" Split lines like J
nmap <C-j> i<CR><ESC>

" Keep search results in center of screen
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" Make C-w the same in insert and normal
inoremap <C-w>k <ESC><C-w>k
inoremap <C-w>j <ESC><C-w>j
inoremap <C-w>l <ESC><C-w>l
inoremap <C-w>h <ESC><C-w>h

nnoremap <silent> <C-w>t :tabnew<CR>


" Disable Arrow Keys
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

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
" Execute visual selection in vim
vmap <leader>vs y:@"<CR>

" Get the current highlight group. Useful for then remapping the color
map <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
map <leader>!hi :so $VIMRUNTIME/syntax/hitest.vim<CR>| " Output all current highlights

