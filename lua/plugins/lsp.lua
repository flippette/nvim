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
    -- enable LSP folds
    dependencies = "kevinhwang91/nvim-ufo",
  },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    config = function(_, _)
      vim.o.foldcolumn = "0"
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      local ufo = require("ufo")
      vim.keymap.set("n", "zR", ufo.openAllFolds)
      vim.keymap.set("n", "zM", ufo.closeAllFolds)
    end,
  },
}
