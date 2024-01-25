local M = {
  "m4xshen/hardtime.nvim",
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
   opts = {
  }
}
function M.config()
  require"hardtime".setup({
    max_item = 2000,
    max_count = 20,
    disabled_mouse = true,
    restricted_keys = {
      ["h"] = { "n", "x" },
      ["l"] = { "n", "x" },
      ["-"] = { "n", "x" },
      ["+"] = { "n", "x" },
      ["gj"] = { "n", "x" },
      ["gk"] = { "n", "x" },
      ["<CR>"] = { "n", "x" },
      ["<C-M>"] = { "n", "x" },
      ["<C-N>"] = { "n", "x" },
      ["<C-P>"] = { "n", "x" },
    },
    disabled_keys = {
      ["<Up>"] = { "", "i" },
      ["<Down>"] = { "", "i" },
      ["<Left>"] = { "", "i" },
      ["<Right>"] = { "", "i" },
    }
  })
end

return M
