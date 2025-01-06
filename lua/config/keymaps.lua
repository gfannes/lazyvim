-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

print("Loading keybindings")

-- Yank and paste to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]])

vim.keymap.set("n", "<C-v>", ":bd<CR>", { desc = "Close current buffer" })

vim.keymap.set({ "n" }, "-o", [[O<esc>]])

-- For some reason, below autocmds only run for files opened after Neovim started

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "BufEnter", "FileType" }, {
  pattern = "cpp",
  callback = function()
    print("Loading C++ keybindings")
    vim.keymap.set({ "n" }, "-b", [[o{<cr>}<esc>O]]) -- Create block
    vim.keymap.set({ "n" }, "-r", [[O#include <><esc>i]]) -- #include
    vim.keymap.set({ "n" }, "-m", [[oMSS();<esc>hi]]) -- MSS()
    vim.keymap.set({ "n" }, "-n", [[oMSS_BEGIN(auro_ReturnCode_t);<cr>MSS_END();<esc>k$]]) -- MSS_BEGIN()/MSS_END()
  end,
})

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "BufEnter", "FileType" }, {
  pattern = "c",
  callback = function()
    print("Loading C keybindings")
    vim.keymap.set({ "n" }, "-b", [[o{<cr>}<esc>O]]) -- Create block
    vim.keymap.set({ "n" }, "-r", [[O#include <><esc>i]]) -- #include
    vim.keymap.set({ "n" }, "-m", [[oMSS_RC();<esc>hi]]) -- MSS_RC()
    vim.keymap.set({ "n" }, "-n", [[oMSS_BEGIN_RC(auro_ReturnCode_t);<cr>MSS_END_RC();<esc>k$]]) -- MSS_BEGIN_RC()/MSS_END_RC()
  end,
})

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "BufEnter", "FileType" }, {
  pattern = "ruby",
  callback = function()
    print("Loading ruby keybindings")
    vim.keymap.set({ "n" }, "-r", [[Orequire('')<esc>hi]]) -- require('')
  end,
})
