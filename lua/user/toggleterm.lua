local M = {
  {
    'akinsho/toggleterm.nvim',
    event = "VeryLazy",
  },
}


function M.config()
  require("toggleterm").setup()
end


return M
