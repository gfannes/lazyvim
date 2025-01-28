return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = {
          "clangd",
          "--header-insertion=never",
        },
        -- You can add more clangd-specific settings here if needed
      },
    },
  },
}
