local M = {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VimEnter",
}


function M.config()
  local dashboard = require("alpha.themes.dashboard")
  require("alpha").setup(dashboard.opts)
end


return M
