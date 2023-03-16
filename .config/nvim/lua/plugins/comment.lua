return {
  {
    "echasnovski/mini.comment",
    config = function()
      require("mini.comment").setup({
        mappings = {
          comment = "//",
        },
      })
    end,
  },
}
