return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        contrast = "soft", -- can be "hard", "soft" or empty string
        -- transparent_mode = true,
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "warm", -- M.styles_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      -- colorscheme = "delec",
      -- colorscheme = "onedark",
    },
  },
}
