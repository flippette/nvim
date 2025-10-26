return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "alejandra",
        "statix",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        nix = { "alejandra" },
      },
    },
  },
}
