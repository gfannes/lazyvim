return {
  {
    "ibhagwan/fzf-lua",
    opts = {
      files = {
        -- Default git_icons=true calls 'git status' under the hood, which is too slow for large repos
        git_icons = false,
      },
    },
  },
}
