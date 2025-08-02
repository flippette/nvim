return {
  {
    "echasnovski/mini.ai",
    opts = function()
      local ai = require("mini.ai")
      local use_ts = { use_nvim_treesitter = true }
      return {
        custom_textobjects = {
          -- code block
          o = ai.gen_spec.treesitter({
            a = {
              "@block.outer",
              "@conditional.outer",
              "@loop.outer",
            },
            i = {
              "@block.inner",
              "@conditional.inner",
              "@loop.inner",
            },
          }, use_ts),
          -- function
          f = ai.gen_spec.treesitter({
            a = "@function.outer",
            i = "@function.inner",
          }, use_ts),
          -- class
          c = ai.gen_spec.treesitter({
            a = "@class.outer",
            i = "@class.inner",
          }, use_ts),
        },
      }
    end,
  },
  {
    "echasnovski/mini.pairs",
    opts = {
      mappings = {
        ["'"] = false,
      },
    },
  },
}
