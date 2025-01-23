-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_ruby_lsp = "solargraph"

-- Only extend comment if the comment on the previous line is not preceded by a non-comment
vim.opt.formatoptions:append("/")

-- Set indentation for Ruby/C++/C files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "ruby", "cpp", "c" },
  callback = function()
    vim.bo.expandtab = true -- Use spaces instead of tabs
    vim.bo.shiftwidth = 4 -- Number of spaces for indentation
    vim.bo.softtabstop = 4 -- Number of spaces per Tab key press
    vim.bo.tabstop = 4 -- Number of spaces a tab character represents
  end,
})

-- Save on FocusLost
vim.api.nvim_create_autocmd("FocusLost", {
  group = vim.api.nvim_create_augroup("FocusLostStuff", { clear = true }),
  callback = function(ev)
    vim.cmd.stopinsert()
    vim.cmd.wall({ mods = { silent = true } })
  end,
})
