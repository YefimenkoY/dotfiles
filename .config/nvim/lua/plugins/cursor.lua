return {
  {
    "mvllow/modes.nvim",
    config = function()
      require("modes").setup({
        -- Set opacity for cursorline and number background
        line_opacity = 0.30,

        -- Enable cursor highlights
        set_cursor = false,

        -- Enable cursorline initially, and disable cursorline for inactive windows
        -- or ignored filetypes
        set_cursorline = true,

        -- Enable line number highlights to match cursorline
        set_number = true,

        -- Disable modes highlights in specified filetypes
        -- Please PR commonly ignored filetypes
        ignore_filetypes = { "NvimTree", "TelescopePrompt" },
      })
    end,
  },
}
