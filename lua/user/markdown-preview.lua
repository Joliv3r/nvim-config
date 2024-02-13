local M = {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
}


function M.config()
  vim.cmd( "let g:mkdp_browser = '/usr/bin/firefox'" )
end


return M
