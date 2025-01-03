local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local c = ls.choice_node
local f = ls.function_node

-- Keybindings
-- Goto next/prev insert
vim.keymap.set({ "i", "s" }, "<C-l>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-h>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })
-- Select next choice
vim.keymap.set({ "i", "s" }, "<A-n>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

-- MSS
ls.add_snippets("cpp", {
  s("mb", {
    t({ "MSS_BEGIN(" }),
    c(1, { t("bool"), t("auro_ReturnCode_t") }),
    t({ ");" }),
    t({ "", "MSS_END();" }),
  }),
})
ls.add_snippets("cpp", {
  s("ms", {
    t({ "MSS(" }),
    i(1, "condition"),
    t({ ");" }),
  }),
})

-- #include
ls.add_snippets("cpp", {
  s("inc", {
    t("#include<"),
    i(1),
    t(">"),
  }),
})

-- Doctest
ls.add_snippets("cpp", {
  s("tc", {
    t({ 'TEST_CASE_FAST("' }),
    i(1),
    t({ '", "[]"){', "}" }),
  }),
})
ls.add_snippets("cpp", {
  s("req", {
    t({ "REQUIRE(" }),
    i(1, "condition"),
    t({ ");" }),
  }),
})
