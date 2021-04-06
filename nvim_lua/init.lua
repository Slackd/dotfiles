require('plugins')
require('keymappings')
require('nv-globals')
vim.cmd('luafile ~/.config/nvim/nv-settings.lua')
require('settings')

-- Autocomplete
require('nv-compe')

-- colorscheme
require('colorscheme')

-- Lua Language LSP
require('lsp')
require('lsp.lua-ls')
require('lsp.python-ls')
require('lsp.bash-ls')

-- Statusline and Bufferline
require('nv-galaxyline')

-- Plugins
require('nv-nvimtree')
require('nv-autopairs')
require('nv-floaterm')
require('nv-gitsigns')
require('nv-hop')
require('nv-gitblame')
require('nv-barbar')
require('nv-treesitter')
require('nv-telescope')
require('nv-colorizer')
require('nv-lightbulb')
require('nv-lspkind')
require('nv-comment')
require('nv-dashboard')
