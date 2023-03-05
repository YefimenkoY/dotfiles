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
    -- "akinsho/bufferline.nvim",
    -- tag = "v3.*",
    -- config = function()
    --   require("bufferline").setup({
    --     diagnostics = {
    --       { enabled = true, icon = "" }, -- WARN
    --       { enabled = true, icon = "" }, -- ERROR
    --       { enabled = false }, -- INFO
    --       { enabled = true }, -- HINT
    --     },
    --     options = {
    --       mode = "tabs",
    --       separator_style = "slant",
    --       -- always_show_bufferline = false,
    --       -- show_buffer_close_icons = false,
    --       -- show_close_icon = false,
    --       color_icons = true,
    --     },
    --     highlights = {
    --       separator = {
    --         fg = "#073642",
    --         bg = "#002b36",
    --       },
    --       separator_selected = {
    --         fg = "#073642",
    --       },
    --       background = {
    --         fg = "#657b83",
    --         bg = "#002b36",
    --       },
    --       buffer_selected = {
    --         fg = "#fdf6e3",
    --         bold = true,
    --       },
    --       fill = {
    --         bg = "#073642",
    --       },
    --     },
    --   })
    -- end,
  },
}
