Plug 'tpope/vim-surround'            " Surround in parens etc with ys or cs


" I never use the native s mappings. I use c and r
nmap s  <Plug>Ysurround
nmap S  <Plug>YSurround
nmap ss <Plug>Yssurround
nmap Ss <Plug>YSsurround
nmap SS <Plug>YSsurround

xmap S   <Plug>VSurround
xmap gS  <Plug>VgSurround
