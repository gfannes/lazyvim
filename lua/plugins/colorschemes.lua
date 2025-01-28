return {
  { "rebelot/kanagawa.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "ficcdaf/ashen.nvim" },
  { "altercation/vim-colors-solarized" },
  { "AlexvZyl/nordic.nvim" },
  { "navarasu/onedark.nvim" },
  { "sainnhe/sonokai" },
  { "shaunsingh/nord.nvim" },
  { "vague2k/vague.nvim" },
  { "sainnhe/everforest" },
  { "bluz71/vim-moonfly-colors" },
  { "thesimonho/kanagawa-paper.nvim" },
  { "cdmill/neomodern.nvim" },
  { "jacoborus/tender.vim" },
  { "catppuccin/nvim" },

  -- Live colorscheme picker :Themery
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          "kanagawa-dragon",
          "ashen",
          "nightfox",
          "nordic",
          "onedark",
          "sonokai",
          "vague",
          "everforest",
          "moonfly",
          "tender",
          "neomodern",
          "catppuccin",
        },
        livePreview = true,
      })
    end,
  },

  {
    "Makaze/AnsiEsc",
    keys = { { "<localleader>c", "<cmd>AnsiEsc<cr>", desc = "Toggle ANSI color coding" } },
  },
}
