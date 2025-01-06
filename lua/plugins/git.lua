return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- Enable blame
    current_line_blame_opts = {
      delay = 100, -- Blame delay in milliseconds
      virt_text_pos = "eol", -- Place blame text at end of line
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
  },
}
