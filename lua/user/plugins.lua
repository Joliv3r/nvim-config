local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim"  -- Popup API from vim in neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used in lots of plugins

  -- Colorschemes
  use "lunarvim/colorschemes"  -- Some extra colorschemes

  -- cmp plugins
  use "hrsh7th/nvim-cmp"  -- The completion plugin
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }  -- Plugin for easy comment
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- snippets
  use "L3MON4D3/LuaSnip"  -- Snippet engine
  use "rafamadriz/friendly-snippets"  -- Bunch of snippets

  -- LSP
  use "neovim/nvim-lspconfig"  -- Enable LSP
  use "williamboman/mason.nvim"  -- Simple to use language server installer
  use "williamboman/mason-lspconfig.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  -- use "nvim-telescope/telescope-media-files.nvim"  -- Telescope extension

  -- Treesitter
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  use "HiPhish/rainbow-delimiters.nvim"

  -- Autopairs
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Gitsigns
  use "lewis6991/gitsigns.nvim"

  -- nvim-tree
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

