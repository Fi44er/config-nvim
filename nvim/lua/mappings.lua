require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

vim.api.nvim_set_keymap("n", "<leader>rn", ":set relativenumber!<CR>", { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
