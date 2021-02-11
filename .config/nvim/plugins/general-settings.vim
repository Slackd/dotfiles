" Colorscheme
colorscheme nord
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
set termguicolors

" Lightline Colorsheme
let g:airline_powerline_fonts = 1
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Plugin Warning Supression for Coc
let g:coc_disable_startup_warning = 1
