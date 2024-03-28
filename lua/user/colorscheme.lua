local M = {
  -- "LunarVim/darkplus.nvim",
  -- "joshdick/onedark.vim",
  -- "folke/tokyonight.nvim",
  -- "rose-pine/neovim",
  -- "EdenEast/nightfox.nvim",
  -- "nanotech/jellybeans.vim",
  -- "croaker/mustang-vim",
  -- "crusoexia/vim-monokai",
  "rebelot/kanagawa.nvim",
  -- "sainnhe/sonokai",
  lazy = false,
  priority = 1000,  -- Make sure main colorscheme loads first
}

function M.config()
  vim.cmd.colorscheme "kanagawa"
end

return M
