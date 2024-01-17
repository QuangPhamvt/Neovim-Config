local M = {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" },
}
function M.config() 
  local luasnip = require("luasnip")
  local extras = require "luasnip.extras"
  local s = luasnip.snippet
  local t = luasnip.text_node
  local i = luasnip.insert_node
  local rep = extras.rep
  luasnip.add_snippets("typescriptreact", {
    s("rafce", {
      t({'import React, { FC } from "react"'}),
      t({"","",'const '}), i(1), t(": FC = () => {"),
      t({"","\treturn ("}),
      t({"",'\t\t<div>'}), rep(1),t("</div>"),
      t({"",'\t)'}),
      t({"",'}'}),
      t({"", "",'export default '}), rep(1)
    })
  })

  -- html snippets in javascript and javascriptreact
  require('luasnip').filetype_extend("typescriptreact", { "html" })
  luasnip.snippets = {
    html = {}
  }
  luasnip.snippets.javascript = luasnip.snippets.html
  luasnip.snippets.javascriptreact = luasnip.snippets.html
  luasnip.snippets.typescriptreact = luasnip.snippets.html
end
return M
