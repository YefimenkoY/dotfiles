-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  vim.opt.guifont = { "Fira Code Bold", "b" }
  vim.g.neovide_scale_factor = 0.9
end
