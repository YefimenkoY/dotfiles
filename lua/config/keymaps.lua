-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

map("n", "<leader>bb", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<cr>", { desc = "NvimTree toggle" })
map("n", "<leader>bc", "<cmd>BufferLinePickClose<cr>", { desc = "Pick to close" })
map("n", "<leader>bj", "<cmd>BufferLinePick<cr>", { desc = "Pick to jump" })
map("n", "<leader>bt", "<cmd>BufferLineSortByTabs<cr>", { desc = "Sort by tabs" })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "J", "mzJ`z")
map("i", "jj", "<Esc>")

-- map("n", "<C-d>", "<C-d>zz")
-- map("n", "<C-u>", "<C-u>zz")

-- Lazygit
map("n", "<leader>gg", function()
  Util.float_term({ "lazygit" }, { size = { width = 1000, height = 1500 }, cwd = Util.get_root() })
end, { desc = "Lazygit" })
