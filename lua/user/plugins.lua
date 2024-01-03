local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  "nvim-lua/popup.nvim",  -- Popup API from vim in neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used in lots of plugins

  -- Colorschemes
  -- "lunarvim/colorschemes",  -- Some extra colorschemes

  -- cmp plugins
  "hrsh7th/nvim-cmp",  -- The completion plugin
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "saadparwaiz1/cmp_luasnip",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",
  {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  },  -- Plugin for easy comment
  "JoosepAlviste/nvim-ts-context-commentstring",

  -- snippets
  "L3MON4D3/LuaSnip",  -- Snippet engine
  "rafamadriz/friendly-snippets",  -- Bunch of snippets

  -- LSP
  "neovim/nvim-lspconfig",  -- Enable LSP
  "williamboman/mason.nvim",  -- Simple to use language server installer
  "williamboman/mason-lspconfig.nvim",

  -- Telescope
  "nvim-telescope/telescope.nvim",
  --  "nvim-telescope/telescope-media-files.nvim"  -- Telescope extension

  -- Treesitter
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  "HiPhish/rainbow-delimiters.nvim",
  {
    "lukas-reineke/indent-blankline.nvim",
    -- config = function()
    --   require("ibl").setup()
    -- end
  },  -- Config in rainbow

  -- Autopairs
  {
	"windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
  },

  -- Gitsigns
  "lewis6991/gitsigns.nvim",

  -- nvim-tree
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",

  -- Bufferline
  "akinsho/bufferline.nvim",
  "moll/vim-bbye",

  -- Starting page
  {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  },

  -- Help for keybindings
  {"folke/which-key.nvim", event = 'VimEnter'},

  -- Toggleterm
  "akinsho/toggleterm.nvim",
}

for _, v in pairs(plugins) do
  table.insert(LAZY_PLUGIN_SPEC, v)
end

require("lazy").setup {
  spec = LAZY_PLUGIN_SPEC,
  install = {
    colorscheme = { "darkplus", "default" },
  },
  ui = {
    border = "rounded",
  },
}
