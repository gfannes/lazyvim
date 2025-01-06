-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Yank and paste to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]])

vim.keymap.set({ "n" }, "-o", [[O<esc>]])
vim.keymap.set({ "n" }, "-b", [[o{<cr>}<esc>O]])
vim.keymap.set({ "n" }, "-m", [[oMSS();<esc>hi]])
vim.keymap.set({ "n" }, "-n", [[oMSS_BEGIN(auro_ReturnCode_t);<cr>MSS_END();<esc>k$]])

vim.keymap.set("n", "<C-v>", ":bd<CR>", { desc = "Close current buffer" })
