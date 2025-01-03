-- Configure Solargraph LSP for LazyVim
return {
  "neovim/nvim-lspconfig",
  opts = function()
    print("Configuring Solargraph")
    -- Search for the nearest .solargraph.yml or git root in parent directories
    local util = require("lspconfig.util")
    root_dir = util.root_pattern(".solargraph.yml", ".git")(fname) or vim.fs.dirname
    -- root_dir = "/home/geertf/auro/stable"
    print("  root_dir: " .. root_dir)
    require("lspconfig").solargraph.setup({
      cmd = { "solargraph", "stdio" },
      root_dir = root_dir,
    })
  end,
}

-- Created by ChatGPT, it finds the correct root dir, but looses the keybindings
-- return {
--   "neovim/nvim-lspconfig",
--   config = function()
--     local lspconfig = require("lspconfig")
--     lspconfig.solargraph.setup({
--       cmd = { "solargraph", "stdio" },
--       root_dir = function(fname)
--         -- Search for the nearest .solargraph.yml or git root in parent directories
--         local util = require("lspconfig.util")
--         return util.root_pattern(".solargraph.yml", ".git")(fname) or vim.fs.dirname
--       end,
--       settings = {
--         solargraph = {
--           diagnostics = true, -- Enable diagnostics
--           formatting = true, -- Enable formatting
--           useBundler = true, -- Use Bundler if available
--           completion = true, -- Enable autocompletion
--           autoformat = true, -- Autoformat code on save
--           logLevel = "debug", -- Log level for debugging
--         },
--       },
--       on_attach = function(client, bufnr)
--         -- Enable keymaps only when LSP is attached
--         local opts = { noremap = true, silent = true, buffer = bufnr }
--         vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Go to definition
--         vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Show hover info
--         vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts) -- Go to implementation
--         vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- List references
--       end,
--     })
--   end,
-- }
