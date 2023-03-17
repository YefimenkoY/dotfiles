return {
  {
    "echasnovski/mini.comment",
    config = function()
      require("mini.comment").setup({
        mappings = {
          comment = "<C-c>",
        },
      })
    end,
  },
}
