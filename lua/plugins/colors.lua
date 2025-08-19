return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      auto_integrations = true,
      floating = {
        transparent = false,
        solid = true,
      },
    },
  },

  {
    "flippette/LazyVim",
    opts = { colorscheme = "catppuccin" },
  },
}
