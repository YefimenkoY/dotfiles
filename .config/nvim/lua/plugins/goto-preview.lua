return {
  "rmagatti/goto-preview",
  config = function()
    require("goto-preview").setup({
      default_mappings = true,
      resizing_mappings = true,
      width = 130, -- Width of the floating window
      height = 28, -- Height of the floating window
    })
  end,
}
