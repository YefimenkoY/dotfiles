return {
  {
    "declancm/cinnamon.nvim",
    config = function()
      require("cinnamon").setup({
        default_delay = 2,
      })
    end,
  },
}