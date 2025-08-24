return {
  {
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
        },
        lualine_z = {
          { "location", padding = 1 },
        },
      },
    },
  },

  {
    "akinsho/bufferline.nvim",
    init = function()
      local catppuccin =
        require("catppuccin.groups.integrations.bufferline")
      function catppuccin.get()
        return catppuccin.get_theme()
      end
    end,
  },
}
