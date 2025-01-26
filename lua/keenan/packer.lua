-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({
		"EdenEast/nightfox.nvim",
		as = 'night-fox',
		config = function()
			require('nightfox').setup({
				options = {
					transparent = true,     -- Disable setting background
				}
			})
			vim.cmd("colorscheme nightfox")
		end
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('https://github.com/ThePrimeagen/harpoon')
	use('https://github.com/mbbill/undotree')
	use('tpope/vim-fugitive')

	use('neovim/nvim-lspconfig')
	
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-buffer'})
	use({'hrsh7th/cmp-path'})
	use({'hrsh7th/cmp-nvim-lsp'})
	use({'hrsh7th/cmp-nvim-lua'})

	use('saadparwaiz1/cmp_luasnip')

	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')

	use('L3MON4D3/LuaSnip')
	use('rafamadriz/friendly-snippets')

	use('VonHeikemen/lsp-zero.nvim')
end)

