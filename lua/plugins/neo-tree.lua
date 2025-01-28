return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = { "buffers" },
    window = {
      mappings = {
        ["b"] = "",
        ["bd"] = "buffer_delete",
      },
    },
  },
}
