" Color Scheme Settings
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
set termguicolors

" Color Scheme
syntax on
colorscheme onedark
filetype on
filetype plugin indent on

" Lightline

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction

function! FileNameWithIcon() abort
  return winwidth(0) > 70  ?  WebDevIconsGetFileTypeSymbol() . ' ' . expand('%:T') : ''
endfunction


set noshowmode
let g:lightline = { 'colorscheme': 'onedark' }
let g:lightline.component_function = { 'gitstatus': 'GitStatus' }
let g:lightline.component = { 'filename_with_icon': '%{FileNameWithIcon()}' }

let g:lightline.active = {
      \ 'left': [['mode', 'readonly'], ['filename_with_icon', 'modified']],
      \ 'right': [['lineinfo'], ['percent'], ['gitstatus', 'fileformat', 'fileencoding', 'filetype']]
      \ }


" Plugin Warning Supression for Coc
let g:coc_disable_startup_warning = 1

" Py Support
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" NerdTree file browser
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Tagbar Toggle
nmap <F8> :TagbarToggle<CR>
