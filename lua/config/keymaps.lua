-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

print("Loading keybindings")

-- Yank and paste to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]])

-- Close current buffer
vim.keymap.set("n", "<C-v>", ":bd<CR>", { desc = "Close current buffer" })

-- Synchronized scrolling
vim.keymap.set("n", "<leader>Bs", ":set scrollbind<CR>", { desc = "Bind synchronized scrolling" })
vim.keymap.set("n", "<leader>Bc", ":set cursorbind<CR>", { desc = "Bind synchronized cursor" })

-- Open line below, remaining in normal mode, without comment extension or indentation
vim.keymap.set({ "n" }, "-o", [[o<esc>0D]], { noremap = true, silent = true })

-- Goto next error
vim.keymap.set({ "n" }, "<leader>xn", vim.diagnostic.goto_next)
vim.keymap.set({ "n" }, "<leader>xp", vim.diagnostic.goto_prev)

-- Make sure keymaps.lua is loaded before the events are fired for files passed directly to the nvim app
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "BufEnter", "FileType" }, {
  pattern = "cpp",
  callback = function()
    print("Loading C++ keybindings")
    vim.keymap.set({ "n" }, "-r", [[O#include <><esc>i]]) -- #include
    vim.keymap.set({ "n" }, "-b", [[o{<cr>}<esc>k$]], { noremap = true, silent = true }) -- Create block
    vim.keymap.set({ "n" }, "-m", [[oMSS();<esc>hi]]) -- MSS()
    vim.keymap.set({ "n" }, "-n", [[oMSS_BEGIN(auro_ReturnCode_t);<cr>MSS_END();<esc>k$]]) -- MSS_BEGIN()/MSS_END()
    vim.keymap.set({ "n" }, "-s", [[Anamespace  { <esc>jI}<esc>k$hhi]]) -- namespace
    vim.keymap.set({ "n" }, "-c", [[oclass <cr>{<cr>public:<cr>private:<cr>};<esc>kkkkA]]) -- class
    vim.keymap.set({ "n" }, "-C", [[ostruct <cr>{<cr>};<esc>kkA]]) -- struct
    vim.keymap.set({ "n" }, "-y", [[a" <<  << "<esc>hhhhi]]) -- Embed in stream
    vim.keymap.set(
      { "n" },
      "-g",
      [[ggO#ifndef HEADER__ALREADY_INCLUDED<cr>#define HEADER__ALREADY_INCLUDED<cr><esc>Go<esc>0Do#endif<esc>ggf_f_]]
    )
    vim.keymap.set({ "n" }, "-e", [[oSECTION("")<cr>{<cr>}<esc>kk$hi]]) -- SECTION
    vim.keymap.set({ "n" }, "-u", [[oREQUIRE();<esc>hi]]) -- REQUIRE()
  end,
})

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "BufEnter", "FileType" }, {
  pattern = "c",
  callback = function()
    print("Loading C keybindings")
    vim.keymap.set({ "n" }, "-r", [[O#include <><esc>i]]) -- #include
    vim.keymap.set({ "n" }, "-b", [[o{<cr>}<esc>O]], { noremap = true, silent = true }) -- Create block
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
