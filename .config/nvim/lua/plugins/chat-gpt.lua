return {
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "dense-analysis/neural",
    config = function()
      require("neural").setup({
        source = {
          openai = {
            api_key = vim.env.OPENAI_API_KEY,
          },
        },
      })
    end,
  },
}
