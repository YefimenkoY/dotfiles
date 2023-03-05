return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        contrast = "hard", -- can be "hard", "soft" or empty string
        -- transparent_mode = true,
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "warmer", -- M.styles_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }
      })
    end,
  },
  { "EdenEast/nightfox.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
      -- colorscheme = "delek",
      -- colorscheme = "onedark",
      -- colorscheme = "nightfox",
    },
  },
}
