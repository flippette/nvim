return {
  "saghen/blink.cmp",
  opts = {
    appearance = {
      nerd_font_variant = "normal",
    },

    completion = {
      documentation = {
        auto_show_delay_ms = 50,
      },
    },

    sources = {
      default = { "lsp", "path", "buffer" },
    },
  },
}
