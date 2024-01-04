local M = {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
}

-- vim.g.loaded_netrw       = 1
-- vim.g.loaded_netrwPlugin = 1
--
-- local status_ok, nvim_tree = pcall(require, "nvim-tree")
-- if not status_ok then
--   return
-- end

-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if not config_status_ok then
--   return
-- end
--
-- local tree_cb = nvim_tree_config.nvim_tree_callback

function M.config()
  local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true, }
    end

    api.config.mappings.default_on_attach(bufnr)

  end


  require("nvim-tree").setup {
    disable_netrw = true,
    hijack_netrw = true,
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
    renderer = {
      root_folder_modifier = ":t",
      icons = {
        glyphs = {
          default = "",
          symlink = "",
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
          git = {
            unstaged = "",
            staged = "S",
            unmerged = "",
            renamed = "➜",
            untracked = "U",
            deleted = "",
            ignored = "◌",
          },
        },
      },
    },
    diagnostics = {
      enable = true,
      show_on_dirs = true,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
    view = {
      width = 30,
      side = "left",
      -- mappings = {
      --   list = {
      --     { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
      --     { key = "h", cb = tree_cb "close_node" },
      --     { key = "v", cb = tree_cb "vsplit" },
      --   },
      -- },
    },
  }
end

return M
