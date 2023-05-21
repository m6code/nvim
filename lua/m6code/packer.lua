
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- INSTALL FUZZY FINDER - Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- INSTALL COLOR SCHEME
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			-- vim.cmd('colorscheme rose-pine') -- for default theme
			-- vim.cmd('colorscheme rose-pine-moon') -- for moon theme
			-- vim.cmd('colorscheme rose-pine-dawn') -- for dawn theme 
            -- vim.cmd('colorscheme onedark')
            vim.cmd('colorscheme onedark')

		end
	})

    use(
        {
            'catppuccin/nvim',
            as = 'catppuccin'
    })

	-- MORE COLOR SCHEME
	--	use('shaunsingh/nord.nvim')
	use ('marko-cerovac/material.nvim')
    use ('joshdick/onedark.vim') -- Theme inspired by Atom
    use ('itchyny/lightline.vim') -- Fancier statusline


	-- INSTALL Tree-sitter (Highlighter)
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

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
	-- do `:so` and `:PackerSync`
    use('mg979/vim-visual-multi')
    use('mattn/emmet-vim') -- emmet
    use('folke/tokyonight.nvim') -- tokyonight theme 
    -- use() -- Catppuccin theme 
    -- Lua
    -- vim.cmd[[colorscheme tokyonight]]

end)


