local M = {
  "LunarVim/darkplus.nvim",
  lazy = false,
  priority = 1000,  -- Make sure main colorscheme loads first
}

function M.config()
  vim.cmd.colorscheme "darkplus"
end

return M
