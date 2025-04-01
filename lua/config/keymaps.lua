-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>ma", "^", { desc = "Go to first non-blank character" })
vim.keymap.set("n", "<leader>me", "$", { desc = "Go to the end of the line" })
