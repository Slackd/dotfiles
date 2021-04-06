-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

local my = function(file) require(file) end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
    -- Packer is a package manager
    use 'wbthomason/packer.nvim'

    -- File Browser Related
    use 'kyazdani42/nvim-tree.lua'

    -- LSP Stuff
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'kabouzeid/nvim-lspinstall'
    use 'rafamadriz/friendly-snippets'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'

    -- Tree Sitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/playground'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'

    -- Theme
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'
    use 'voldikss/vim-floaterm'
    use 'romgrk/barbar.nvim'
    use 'glepnir/galaxyline.nvim'

    -- Snippets Etc.
    use 'hrsh7th/vim-vsnip' 
    use 'norcalli/nvim-colorizer.lua'
    use 'sheerun/vim-polyglot'
    use 'windwp/nvim-autopairs'
    use 'terrortylor/nvim-comment'
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- Git
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use 'f-person/git-blame.nvim'

    -- Misc Quality of Life
    use 'phaazon/hop.nvim'
    use 'airblade/vim-rooter'
    use 'mbbill/undotree'
    use 'p00f/nvim-ts-rainbow'
    use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
    use 'windwp/nvim-ts-autotag'
    use 'glepnir/dashboard-nvim'

end)
