local M = {
  "nvim-treesitter/nvim-treesitter",
  -- event = { "BufReadPost", "BufNewFile" },
  branch = 'main',
  lazy = false,
  build = ":TSUpdate",
}

-- the parsers that should be installed and enabled
local ensure_installed = {
  "lua",
  "markdown",
  "markdown_inline",
  "bash",
  "python",
  "latex",
  "rust",
  "go",
  "toml"
}

function M.config()
  require("nvim-treesitter").install(ensure_installed)

  vim.api.nvim_create_autocmd('FileType', {
    pattern = ensure_installed,
    callback = function() vim.treesitter.start() end,
  })
end

return M
