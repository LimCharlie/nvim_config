return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    local function truncate_branch_name(branch)
      if not branch or branch == "" then
        return ""
      end

      -- Match the branch name to the specified format
      local user, team, ticket_number = string.match(branch, "^(%w+)/(%w+)%-(%d+)")

      -- If the branch name matches the format, display {user}/{team}-{ticket_number}, otherwise display the full branch name
      if ticket_number then
        return user .. "/" .. team .. "-" .. ticket_number
      else
        return branch
      end
    end

    -- Custom section definitions
    local lint_progress = function()
      local linters = require("lint").get_running()
      if #linters == 0 then
        return "󰦕"
      end
      return "󱉶 " .. table.concat(linters, ", ")
    end

    lualine.setup({
      options = {
        icons_enabled = true,
        theme = "catppuccin",
        component_separators = { left = "", right = "󰅁" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          { "branch", icon = "", fmt = truncate_branch_name },
          "diff",
          "diagnostics",
        },
        lualine_c = { "filename" },
        lualine_x = { "encoding", 'filetype' },
        lualine_y = { lint_progress },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = {},
    })
  end
}
