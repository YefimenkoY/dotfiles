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
map("n", "<leader>e", "<cmd>EditVifm<cr>", { desc = "NvimTree toggle" })
map("i", "jj", "<Esc>")

-- line movement
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- zz
map("n", "j", "jzz")
map("n", "k", "kzz")
map("n", "<C-d>", '<cmd>call smoothie#do("<C-D>zz")<cr>')
map("n", "<C-u>", '<cmd>call smoothie#do("<C-U>zz")<cr>')
map("n", "n", '<cmd>call smoothie#do("nzzzv")<cr>')
map("n", "N", '<cmd>call smoothie#do("Nzzzv")<cr>')

-- Lazygit
map("n", "<leader>gg", function()
  Util.float_term({ "lazygit" }, { size = { width = 0.98, height = 0.98 }, cwd = Util.get_root() })
end, { desc = "Lazygit" })

-- go to preview
map("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })

-- bufferline
map("n", "<A-q>", "<Cmd>BufferClose<CR>", { noremap = true })
map("n", "<A-p>", "<Cmd>BufferPick<CR>", { noremap = true })

-- harpoon
map("n", "<leader>ha", '<cmd>lua require("harpoon.mark").add_file()<cr>', { noremap = true, desc = "Harpoon add" })
map("n", "<leader>h", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', { noremap = true, desc = "Harpoon" })
map("n", "gl", '<cmd>lua require("harpoon.ui").nav_next() <cr>', { noremap = true, desc = "Harpoon next" })
map("n", "gh", '<cmd>lua require("harpoon.ui").nav_prev()<cr>', { noremap = true, desc = "Harpoon prev" })
map("n", "1", '<cmd>lua require("harpoon.ui").nav_file(1)<cr>', { noremap = true })
map("n", "2", '<cmd>lua require("harpoon.ui").nav_file(2)<cr>', { noremap = true })
map("n", "3", '<cmd>lua require("harpoon.ui").nav_file(3)<cr>', { noremap = true })
map("n", "4", '<cmd>lua require("harpoon.ui").nav_file(4)<cr>', { noremap = true })
map("n", "5", '<cmd>lua require("harpoon.ui").nav_file(5)<cr>', { noremap = true })

-- undo-tree
map("n", "<leader>`", "<cmd>UndotreeToggle<CR>")

-- diff-view
map("n", "<leader>gx", "<cmd>DiffviewClose<CR>")
map("n", "<leader>gd", "<cmd>DiffviewFileHistory %<CR>")

-- Neural AI
map({ "n", "v" }, "ga", "<cmd>Neural<cr>", { noremap = true })
