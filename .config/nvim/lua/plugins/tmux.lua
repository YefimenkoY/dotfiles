return {
  {
    "aserowy/tmux.nvim",
    config = function()
      local keymaps = require("tmux.keymaps")
      keymaps.register("n", {
        ["<C-w>h"] = [[<cmd>lua require('tmux').move_left()<cr>]],
        ["<C-w>j"] = [[<cmd>lua require('tmux').move_bottom()<cr>]],
        ["<C-w>k"] = [[<cmd>lua require('tmux').move_top()<cr>]],
        ["<C-w>l"] = [[<cmd>lua require('tmux').move_right()<cr>]],
        -- ["C-n"] = "",
      })
      return require("tmux").setup({
        navigation = {
          enable_default_keybindings = false,
        },
      })
    end,
  },
}
