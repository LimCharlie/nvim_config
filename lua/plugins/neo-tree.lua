return {
  "nvim-neo-tree/neo-tree.nvim",
  tag = "3.14",
  lazy = false,
  keys = {
    { "<leader>e", "<cmd>Neotree toggle reveal position=float<CR>", desc = "[T]oggle [N]eotree" },
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
}
