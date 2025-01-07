local o = vim.opt

o.backup = false                          -- creates a backup file
o.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
o.cmdheight = 2                           -- more space in the neocim command line for displaying messages
o.completeopt = { "menuone", "noselect" } -- insert mode completion
o.conceallevel = 0                        -- displays text with conceal syntax attribute normally
o.fileencoding = "utf-8"
o.hlsearch = false                        -- highlight all matches on previous search
o.ignorecase = true
o.mouse = "a"                             -- allows mouse to be used
o.pumheight = 10                          -- number of elements in pop up menu
o.showmode = false                        -- show which mode is active
o.showtabline = 2
o.smartcase = true                        -- ignore ignorecase if capital letters
o.smartindent = true                      -- autoindentation
o.splitbelow = false
o.splitright = true
o.swapfile = false
o.timeoutlen = 300
o.undofile = true
o.updatetime = 300
o.writebackup = false
o.expandtab = true                        -- convert tabs to spaces
o.shiftwidth = 2                          -- number of spaces for an indentation
o.tabstop = 2                             -- number of spaces for a tab
o.cursorline = true                       -- highlight current line
o.number = true                           -- set numbered lines
o.relativenumber = true
o.numberwidth = 2
o.signcolumn = "yes"
o.wrap = false
o.linebreak = true                        -- don't split words for wrap
o.scrolloff = 8                           -- number of lines clearance up and down
o.sidescrolloff = 8
o.guifont = "mononoki"
o.termguicolors = true                    -- set term gui colors
-- o.foldmethod = "indent"
o.fillchars:append { eob = " " }
o.spelllang = {'en_us','nb'}
o.spell = false

-- vim.opt.shortmess = "ilmnrx"                        -- flags to shorten vim messages, see :help 'shortmess'
vim.opt.shortmess:append "c"                           -- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append "-"                           -- hyphenated words recognized by searches
vim.opt.formatoptions:remove({ "c", "r", "o" })        -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")  -- separate vim plugins from neovim in case vim still in use
