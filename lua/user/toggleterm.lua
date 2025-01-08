local M = {
    'akinsho/toggleterm.nvim',
    event = "VeryLazy",
}


function M.config()
  require("toggleterm").setup()
  vim.cmd(":tnoremap jk <C-\\><C-n>")
  vim.cmd(":tnoremap <ESC> <cmd>ToggleTermToggleAll<cr>")
end


return M
