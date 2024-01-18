local M = {
  "zbirenbaum/copilot-cmp",
  dependencies = {
    "onsails/lspkind.nvim"
  }
}
function M.config()
  -- lspkind.lua
  local lspkind = require("lspkind")
  lspkind.init({
    symbol_map = {
      Copilot = "",
    },
  })
  require("copilot_cmp").setup()

  vim.api.nvim_set_hl(0, "CmpItemKindCopilot", {fg ="#6CC644"})
end

return M
