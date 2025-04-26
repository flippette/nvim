-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable cursor styling
vim.o.guicursor = ""

-- Disable animations
vim.g.snacks_animate = false

-- Auto-updates
vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup(
    "lazyvim_autoupdate",
    { clear = true }
  ),
  callback = function()
    require("lazy").update({ show = false })
  end,
})
