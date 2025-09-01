return {
  "scalameta/nvim-metals",
  ft = { "scala", "sbt" },
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  opts = function()
    local metals = require("metals")
    local config = metals.bare_config()
    config.on_attach = metals.setup_dap()
    config.settings = {
      showImplicitArguments = true,
      superMethodLensesEnabled = true,
      useGlobalExecutable = true,
    }
    return config
  end,
  config = function(self, config)
    local metals = require("metals")
    local augroup = vim.api.nvim_create_augroup(
      "nvim-metals",
      { clear = true }
    )
    vim.api.nvim_create_autocmd("FileType", {
      pattern = self.ft,
      callback = function()
        metals.initialize_or_attach(config)
      end,
      group = augroup,
    })
  end,
}
