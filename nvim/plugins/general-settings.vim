" Colorscheme settings
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
set termguicolors

" color scheme
syntax on
colorscheme onedark
filetype on
filetype plugin indent on

" lightline
set noshowmode
let g:lightline = { 'colorscheme': 'onedark' }

" Plugin Warning Supression for Coc
let g:coc_disable_startup_warning = 1

" Py Support
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'


" file browser
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


