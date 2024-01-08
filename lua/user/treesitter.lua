local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      -- event = "VeryLazy",
    },
  },
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "typescript", "tsx", "javascript", "markdown", "markdown_inline", "bash", "python" }, -- put the language you want in this array
    auto_install = true,
    indent = {
      enable = true,
    },
    highlight = {
      enable = true,
      -- disable = { "markdown" },
      additional_vim_regex_highlighting = false,
    },
    autopairs = { enable = true },
  }
end

return M

