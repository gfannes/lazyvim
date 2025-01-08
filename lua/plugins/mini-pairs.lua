return {
  "echasnovski/mini.pairs",
  opts = function(_, opts)
    -- skip autopair when next character is one of these
    -- skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
    opts.skip_next = nil

    -- skip autopair when the cursor is inside these treesitter nodes
    -- skip_ts = { "string" },
    opts.skip_ts = {}

    -- skip autopair when next character is closing pair
    -- and there are more closing pairs than opening pairs
    -- skip_unbalanced = true,

    -- better deal with markdown code blocks
    -- markdown = true,
  end,
}
