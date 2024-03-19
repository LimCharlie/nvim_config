local keys = {}
-- INFO:
-- Plugin specific keymaps are under their respective file in plugins/*

function keys.init()
  vim.keymap.set("n", "q", "<nop>", { silent = true })
  -- Clear search with <esc>
  vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch", silent = true })
  vim.keymap.set({ "n" }, "<C-a>", "gg<S-v>G")
  -- Save
  vim.keymap.set("n", "<leader>s", "<CMD>w<CR>", { silent = true, desc = "[S]ave [F]ile" })
  vim.keymap.set("n", "<leader>q", ":quit<Return>", { desc = "[Q]uit [F]ile" })
  -- Window cursor movement
  vim.keymap.set("n", "<leader>wh>", "<C-w>h", { desc = "[G]o to [L]eft [W]indow", silent = true })
  vim.keymap.set("n", "<leader>wj>", "<C-w>j", { desc = "[G]o to [L]ower [W]indow", silent = true })
  vim.keymap.set("n", "<leader>wk>", "<C-w>k", { desc = "[G]o to [U]pper [W]indow", silent = true })
  vim.keymap.set("n", "<leader>wl>", "<C-w>l", { desc = "[G]o to [R]ight [W]indow", silent = true })
  -- Resize window
  vim.keymap.set("n", "<S-Up>", "<CMD>resize +2<CR>", { desc = "Increase window height", silent = true })
  vim.keymap.set("n", "<S-Down>", "<CMD>resize -2<CR>", { desc = "Decrease window height", silent = true })
  vim.keymap.set("n", "<S-Left>", "<CMD>vertical resize -2<CR>", { desc = "Decrease window width", silent = true })
  vim.keymap.set("n", "<S-Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase window width", silent = true })
  -- Others
  vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "[D]elete [W]indow", silent = true })
  vim.keymap.set("n", "<leader>wb", "<C-W>s", { desc = "[S]plit [W]indow below", silent = true })
  vim.keymap.set("n", "<leader>wr", "<C-W>v", { desc = "[S]plit [W]indow right", silent = true })
  -- Tab
  vim.keymap.set("n", "<leader>tt", "<CMD>tabnew<CR>", { desc = "[N]ew [T]ab", silent = true })
  vim.keymap.set("n", "<leader>td", "<CMD>tabclose<CR>", { desc = "[C]lose [T]ab", silent = true })
  vim.keymap.set("n", "<S-h>", "<cmd>tabprevious<cr>", { desc = "[P]rev [B]uffer", silent = true })
  vim.keymap.set("n", "<S-l>", "<cmd>tabnext<cr>", { desc = "[N]ext [B]uffer", silent = true })
  vim.keymap.set("n", "<S-j>", "<cmd>-tabmove<cr>", { desc = "Move tab to left", silent = true, noremap = true })
  vim.keymap.set("n", "<S-k>", "<cmd>+tabmove<cr>", { desc = "Move tab to right", silent = true })
  -- Move lines
  vim.keymap.set("v", "<leader>k", ":m '>+1<CR>gv=gv", { desc = "[M]ove [L]ine [U]p", silent = true })
  vim.keymap.set("v", "<leader>j", ":m '<-2<CR>gv=gv", { desc = "[M]ove [L]ine [D]own", silent = true })
end

return keys
