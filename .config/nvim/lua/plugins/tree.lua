-- local tree_cb = require("nvim-tree.config").nvim_tree_callback
local WIDTH_RATIO = 0.3 -- You can change this too

return {
  {
    "nvim-tree/nvim-tree.lua",
    requires = { { "nvim-tree/nvim-web-devicons" } },
    opts = {
      view = {
        side = "right",
        width = function()
          return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
        end,
        mappings = {
          list = {
            { key = { "L" }, action = "cd" },

            { key = { "l", "<CR>", "<2-LeftMouse>" }, action = "edit" },
            { key = "<C-s>", action = "split" },
            { key = "<C-v>", action = "vsplit" },
            { key = "<C-t>", action = "tabnew" },
            { key = "h", action = "close_node" },
            { key = "i", action = "preview" },
            { key = "R", action = "refresh" },
            { key = "c", action = "create" },
            { key = "D", action = "remove" },
            { key = "r", action = "rename" },
            { key = "d", action = "cut" },
            { key = "y", action = "copy" },
            { key = "p", action = "paste" },
            { key = "gyn", action = "copy_name" },
            { key = "gyp", action = "copy_path" },
            {
              key = "gya",
              action = "copy_absolute_path",
            },
            { key = "H", action = "dir_up" },
            { key = "s", action = "system_open" },
            { key = "q", action = "close" },
          },
        },
      },
    },
  },
}
