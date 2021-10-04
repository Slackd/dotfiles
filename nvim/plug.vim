call plug#begin(stdpath('data') . '/plugged')

if has("nvim")

"Interface Stuff
Plug 'whatsthatsmell/codesmell_dark.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'glepnir/dashboard-nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
" Tabs and Buffers
Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
" Git Plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Formatting
Plug 'windwp/nvim-autopairs'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'preservim/nerdcommenter'
" LSP Stuff
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

endif

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()
