local M = {
  "HiPhish/rainbow-delimiters.nvim"
}

function M.config()
  local rainbow_delimiters = require("rainbow-delimiters")

  vim.g.rainbow_delimiters = {
    strategy = {
      [""] = rainbow_delimiters.strategy["global"],
    },
    query = {
      [""] = "rainbow-delimiters",
      lua = "rainbow-parens",
      typescript = "rainbow-parens",
      javascript = "rainbow-parens",
      typescriptreact = "rainbow-parens",
      javascriptreact = "rainbow-parens",
      tsx = "rainbow-parens",
      jsx = "rainbow-parens",
      html = "rainbow-parens",
    },
    highlight = {
      "TSRainbowYellow",
      "TSRainbowViolet",
      "TSRainbowBlue",
    }
  }
end
return M
