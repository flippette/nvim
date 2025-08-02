return {
  "saghen/blink.cmp",
  opts = {
    appearance = {
      nerd_font_variant = "normal",
    },

    completion = {
      documentation = {
        auto_show_delay_ms = 1000,
      },
    },

    signature = {
      enabled = true,
    },

    sources = {
      default = { "lsp", "path", "buffer" },
      providers = {
        lsp = { async = true },
        path = { async = true },
        buffer = { async = true },
      },
    },
  },
}
