local M = {
  'numToStr/Comment.nvim',
  opts = {},
  lazy = false,
}


function M.config()
  require("Comment").setup()
end


return M
