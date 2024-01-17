local M = {
  "jackMort/ChatGPT.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  }
}

function M.config()
  local chatGPT = require("chatgpt")
  chatGPT.setup({
    api_key_cmd = "pass show api/tokens/openai"
  })
end

return M
