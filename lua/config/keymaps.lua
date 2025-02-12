-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<leader>ww", ":w<cr>", { desc = "Save Buffer", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wa", ":wa<cr>", { desc = "Save All Buffers", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wq", ":wq<cr>", { desc = "Save Buffer and Quit", noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>wQ",
  ":wqa<cr>",
  { desc = "Save All Buffers and Quit", noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>so", ":so %<cr>", { desc = "Source Buffer", noremap = true, silent = true })

local snacks = require("snacks")

vim.keymap.del("n", "<leader>sh")
vim.keymap.del("n", "<leader>sj")
vim.keymap.del("n", "<leader>sk")
vim.keymap.del("n", "<leader>sl")

local picker = snacks.picker
vim.keymap.set("n", "<leader>fh", function()
  picker.help()
end, { desc = "Find Help", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fj", function()
  picker.jumps()
end, { desc = "Find jumps", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fk", function()
  picker.keymaps()
end, { desc = "Find Keymaps", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fl", function()
  picker.loclist()
end, { desc = "Find Loclist", noremap = true, silent = true })

vim.keymap.set("n", "<leader>sh", ":vsplit<cr><c-w>h", { desc = "Split to the Left", noremap = true, silent = true })
vim.keymap.set("n", "<leader>sj", ":split<cr>", { desc = "Split to the Bottom", noremap = true, silent = true })
vim.keymap.set("n", "<leader>sk", ":split<cr><c-w>k", { desc = "Split to the Top", noremap = true, silent = true })
vim.keymap.set("n", "<leader>sl", ":vsplit<cr>", { desc = "Split to the Right", noremap = true, silent = true })
