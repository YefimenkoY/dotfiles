return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        contrast = "hard", -- can be "hard", "soft" or empty string
        -- invert_tabline = true,
        transparent_mode = false,
      })
    end,
  },
  { "EdenEast/nightfox.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
      -- colorscheme = "onedark",
      -- colorscheme = "nightfox",
    },
  },
}
