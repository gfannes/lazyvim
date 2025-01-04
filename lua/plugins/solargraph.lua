-- Configure Solargraph LSP for LazyVim

-- Find the root dir, preferrably where '.solargraph.yml' is and convert to absolute path
root_dir = require("lspconfig.util").root_pattern(".solargraph.yml", "Gemfile", ".git")(fname)
root_dir = root_dir and vim.loop.fs_realpath(root_dir)
root_dir = root_dir or vim.env.PWD

return {
  "neovim/nvim-lspconfig",

  opts = {
    servers = {
      solargraph = {
        root_dir = root_dir,
      },
    },
  },
}
