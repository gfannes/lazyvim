-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_ruby_lsp = "solargraph"

-- Set indentation for Ruby files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  callback = function()
    vim.bo.expandtab = true -- Use spaces instead of tabs
    vim.bo.shiftwidth = 4 -- Number of spaces for indentation
    vim.bo.softtabstop = 4 -- Number of spaces per Tab key press
    vim.bo.tabstop = 4 -- Number of spaces a tab character represents
  end,
})
--
-- vim.bo.expandtab = true
-- vim.bo.shiftwidth = 4
-- vim.bo.tabstop = 4
