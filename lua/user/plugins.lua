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

  -- Colorschemes
  -- "lunarvim/colorschemes",  -- Some extra colorschemes

  -- cmp plugins

  -- snippets

  -- LSP

  -- Telescope
  --  "nvim-telescope/telescope-media-files.nvim"  -- Telescope extension

  -- Treesitter

  -- Autopairs

  -- Gitsigns

  -- nvim-tree

  -- Bufferline

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
