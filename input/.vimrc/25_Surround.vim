Plug 'tpope/vim-surround'            " Surround in parens etc with ys or cs


let g:surround_no_mappings = 1

" I never use the native s mappings. I use c and r
nmap s  <Plug>Ysurround
nmap S  <Plug>YSurround
nmap ss <Plug>Yssurround
nmap Ss <Plug>YSsurround
nmap SS <Plug>YSsurround

" Add back in the defaults because I disable surround setting maps at all
nmap ds  <Plug>Dsurround
nmap cs  <Plug>Csurround
nmap cS  <Plug>CSurround

xmap s   <Plug>Vsurround
xmap S   <Plug>VSurround
xmap gS  <Plug>VgSurround

