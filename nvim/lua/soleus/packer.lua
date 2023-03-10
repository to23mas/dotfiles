-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
-- ===================== TELESCOPE =====================
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
-- ===================== TREESITTER =====================
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'  }

-- ===================== COLORSCHEMES =====================
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use { "catppuccin/nvim", as = "catppuccin" }

	use 'nvim-tree/nvim-web-devicons'
	use 'rmehri01/onenord.nvim'
	use 'AlexvZyl/nordic.nvim'
-- ===================== COMMENTS =====================
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}


-- ===================== HARPOON =====================
	use 'ThePrimeagen/harpoon'

-- ===================== STATUS LINE =====================
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}


-- ===================== EASY MOTION =====================
	use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require'hop'.setup {
				keys = 'abcdefghijklnopqrstuvxyz',
				case_sensitive = false }
		end
	}

-- ===================== LSP =====================
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

-- ===================== LEADER KEY/WHICHKEY =====================
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}
-- ===================== PHPACTOR =====================
	use 'neovim/nvim-lspconfig'
-- ===================== GIT =====================
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
	
end)

-- test string Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.
