return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = { "filesystem", "buffers" },
    window = {
      mappings = {
        ["b"] = "",
        ["bd"] = "buffer_delete",
      },
    },
  },
}
