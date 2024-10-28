local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "latex", }, -- put the language you want in this array
    
    -- ensure_installed = "all", -- one of "all" or a list of languages

    highlight = {
      enable = true,       -- false will disable the whole extension
      additional_vim_regex_highlighting = false,
    },

    autopairs = {
      enable = true,
    },
    indent = { enable = true },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }
end

return M
