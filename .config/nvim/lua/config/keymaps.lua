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

-- map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

map("n", "<leader>bb", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<cr>", { desc = "NvimTree toggle" })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "J", "mzJ`z")
map("i", "jj", "<Esc>")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Lazygit
map("n", "<leader>gg", function()
  Util.float_term({ "lazygit" }, { size = { width = 1000, height = 1500 }, cwd = Util.get_root() })
end, { desc = "Lazygit" })

-- go to preview
map("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })

-- bufferline
map("n", "<A-q>", "<Cmd>BufferClose<CR>", { noremap = true })
map("n", "<A-p>", "<Cmd>BufferPick<CR>", { noremap = true })

-- harpoon
map("n", "<leader>ha", '<cmd>lua require("harpoon.mark").add_file()<cr>', { noremap = true, desc = "Harpoon add" })
map("n", "<leader>h", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', { noremap = true, desc = "Harpoon" })
map("n", "<L", '<cmd>lua require("harpoon.ui").nav_next() <cr>', { noremap = true })
map("n", "<H>", '<cmd>lua require("harpoon.ui").nav_prev()<cr>', { noremap = true })
