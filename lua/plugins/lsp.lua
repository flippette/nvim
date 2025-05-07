return {
  { "mason-org/mason.nvim", version = "1.11.0" },
  { "mason-org/mason-lspconfig.nvim", version = "1.32.0" },
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
  },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            check = {
              allTargets = false,
              command = "clippy",
            },
          },
        },
      },
    },
  },
}
