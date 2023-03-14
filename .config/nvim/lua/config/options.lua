-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.autoindent = true
opt.smartindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.expandtab = true
opt.inccommand = "split"
opt.smarttab = true
opt.breakindent = true

opt.cursorline = true -- Enable highlighting of the current line
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.mouse = "a" -- Enable mouse mode
opt.termguicolors = true
opt.winminwidth = 10
opt.number = true -- Print line number
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 1 -- Lines of context
opt.colorcolumn = "80"
opt.shiftwidth = 2 -- Size of an indent
opt.spelllang = { "en" }
opt.tabstop = 4 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.guicursor = ""
opt.swapfile = false
opt.termguicolors = true

opt.wildmode = "longest:full,full" -- Command-line completion mode
vim.g.smoothie_enabled = true
vim.g.gitblame_message_template = "<author> • <date>"

-- opt.background = "light"
