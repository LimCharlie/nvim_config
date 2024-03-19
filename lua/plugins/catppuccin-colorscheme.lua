return {
  "catppuccin/nvim",
  lazy = false,
  priority = 10000,
  config = function()
    local catppuccin = require("catppuccin")
    catppuccin.setup({
      flavour = "mocha",
      term_colors = false,
      background = { -- :h background
        dark = "mocha",
      },
      transparent_background = false,
      dim_inactive = {
        enabled = false,         -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15,       -- percentage of the shade to apply to the inactive window
      },
      styles = {                 -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = { "bold" },
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    })
    vim.cmd("colorscheme catppuccin")
  end
}
