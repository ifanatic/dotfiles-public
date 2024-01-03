return require('packer').startup(function(use)
	-- Plugins
    use 'airblade/vim-gitgutter'
	use 'machakann/vim-highlightedyank'
	use 'andymass/vim-matchup'
	use 'tpope/vim-commentary'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Navigation
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'
    use 'folke/flash.nvim'

    -- UI
	use 'romgrk/barbar.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-lualine/lualine.nvim'

    -- LSP
	use 'rust-lang/rust.vim'
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/lsp_extensions.nvim'
    use 'williamboman/mason.nvim'
	use 'L3MON4D3/LuaSnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'

    -- Themes
	use 'rakr/vim-one'
end)


