-- basically the LazyVim extra, but don't install HLS from Mason

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "haskell",
      },
    },
  },

  {
    "mrcjkb/haskell-tools.nvim",
    version = false,
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
    keys = {
      {
        "<localleader>e",
        "<cmd>HlsEvalAll<cr>",
        ft = "haskell",
        desc = "Evaluate All",
      },
      {
        "<localleader>h",
        function()
          require("haskell-tools").hoogle.hoogle_signature()
        end,
        ft = "haskell",
        desc = "Hoogle Signature",
      },
      {
        "<localleader>r",
        function()
          require("haskell-tools").repl.toggle()
        end,
        ft = "haskell",
        desc = "REPL (Package)",
      },
      {
        "<localleader>R",
        function()
          require("haskell-tools").repl.toggle(
            vim.api.nvim_buf_get_name(0)
          )
        end,
        ft = "haskell",
        desc = "REPL (Buffer)",
      },
    },
  },

  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "fourmolu",
        "haskell-debug-adapter",
      },
    },
  },

  {
    "luc-tielen/telescope_hoogle",
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
    opts = function()
      LazyVim.on_load("telescope.nvim", function()
        require("telescope").load_extension("ht")
      end)
    end,
    keys = {
      {
        "<localleader>H",
        "<cmd>Telescope hoogle<cr>",
        ft = "haskell",
        desc = "Hoogle",
      },
    },
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
          ensure_installed = { "haskell-debug-adapter" },
        },
      },
    },
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        haskell = { "fourmolu" },
        cabal = { "cabal_fmt" },
      },
    },
  },
}
