return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      component_separators = "",
      section_separators = "",
    },
    sections = {
      lualine_a = {
        {
          function()
            return " "
          end,
          padding = 0,
        },
      },
      lualine_y = {
        { "progress", padding = 1 },
        { "location", padding = { left = 0, right = 1 } },
      },
      lualine_z = {},
    },
  },
}
