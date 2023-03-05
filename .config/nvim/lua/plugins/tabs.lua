return {
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({
        override = {},
        -- globally enable default icons (default to false)
        -- will get overriden by `get_icons` option
        default = true,
      })
    end,
  },
  {
    -- "romgrk/barbar.nvim",
    -- config = function()
    --   require("bufferline").setup({
    --     diagnostics = {
    --       -- you can use a list
    --       { enabled = true, icon = "" }, -- ERROR
    --       { enabled = true, icon = "" }, -- WARN
    --       { enabled = true }, -- INFO
    --       { enabled = true }, -- HINT
    --     },
    --   })
    -- end,
    -- dependencies = "nvim-tree/nvim-web-devicons",
  },
}
