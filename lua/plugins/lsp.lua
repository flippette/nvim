return {
  {
    "chrisgrieser/nvim-lsp-endhints",
    event = "LspAttach",
    opts = {
      icons = {
        type = "-> ",
        parameter = "<- ",
        offspec = "",
        unknown = "",
      },
    },
    config = function(_, opts)
      require("lsp-endhints").setup(opts)
      local inlay_hl =
        vim.api.nvim_get_hl(0, { name = "LspInlayHint" })
      inlay_hl.bg = "NONE"
      vim.api.nvim_set_hl(0, "LspInlayHint", inlay_hl)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "kevinhwang91/nvim-ufo" },
    opts = {
      diagnostics = {
        virtual_text = {
          format = function(diag)
            return string.match(diag.message, "^[^\n]*")
          end,
        },
      },
    },
  },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    init = function(_)
      vim.o.foldcolumn = "0"
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
    end,
    opts = {},
  },
}
