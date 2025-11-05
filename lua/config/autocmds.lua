-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Clear background color for virtual text diagnostics
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local function update_hl(ns_id, name, val)
      local hl_opts =
        vim.api.nvim_get_hl(0, { name = name })
      for k, v in pairs(val) do
        hl_opts[k] = v
      end
      vim.api.nvim_set_hl(ns_id, name, hl_opts)
    end

    local prefix = "DiagnosticVirtualText"
    local bg_config = { bg = "NONE" }
    update_hl(0, prefix .. "Error", bg_config)
    update_hl(0, prefix .. "Warn", bg_config)
    update_hl(0, prefix .. "Info", bg_config)
    update_hl(0, prefix .. "Hint", bg_config)
    update_hl(0, prefix .. "Ok", bg_config)
  end,
})

-- REALLY disable wrapping
vim.api.nvim_create_augroup(
  "lazyvim_wrap_spell",
  { clear = true }
)

-- Custom tree-sitter grammars
vim.api.nvim_create_autocmd("User", {
  pattern = "TSUpdate",
  callback = function()
    require("nvim-treesitter.parsers").idris = {
      install_info = {
        url = "https://github.com/kayhide/tree-sitter-idris",
        revision = "c56a25cf57c68ff929356db25505c1cc4c7820f6",
      },
    }
  end,
})
vim.treesitter.language.register("idris", { "idr" })
