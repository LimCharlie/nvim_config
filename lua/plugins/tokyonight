return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 10000,
  config = function()
    local tokyonight = require("tokyonight")

    tokyonight.setup({
      style = 'moon',
      transparent_background = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { italic = true },
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark",   -- style for floating windows
      },

      on_colors = function(colors)
        colors.bg = "#16112f"
        colors.search = "#16112f"
        colors.popup = "#16112f"
        colors.statusline = "#16112f"
      end
    })

    vim.cmd("colorscheme tokyonight")
  end
}
