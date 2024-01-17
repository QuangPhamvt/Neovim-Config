local M = {
	"L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" },
}
function M.config ()
  local luasnip = require"luasnip"
  local s = luasnip.snippet
  local t = luasnip.text_node
  local i = luasnip.insert_node
  local extras = require "luasnip.extras"
  local rep = extras.rep

  luasnip.filetype_extend("typescriptreact", { "html" })

  require("luasnip/loaders/from_vscode").load({include = {"html"}})
  require("luasnip/loaders/from_vscode").lazy_load()


  -- tsx
  luasnip.add_snippets("typescriptreact", {
    s("rafce", {
      t('import { FC } from "react"'),
      t({"", ""}),
      t("const "), i(1), t(" : FC = () => {"),
      t({"", "\treturn ("}),
      t({"","\t\t<div>"}), rep(1), t({'</div>','\t)'}),
      t({"", "}"}),
      t({"", "export default "}), rep(1)
    })
  })

end
return M
