-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable cursor styling
vim.o.guicursor = ""

-- Disable animations
vim.g.snacks_animate = false

-- 2-space indenting by default
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

-- Disable window wrapping
vim.o.wrap = false

-- Disable system clipboard (use "+ instead)
vim.o.clipboard = "unnamed"

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

-- Disable the default Rust ftplugin settings
-- (this sets sw=4)
vim.g.rust_recommended_style = false
