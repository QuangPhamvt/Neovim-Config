local M = {
  "mawkler/modicator.nvim",
  event = "BufEnter",
}

function M.config()
  require("modicator").setup {
    show_warning = false,
    highlight = {
      enabled = true,
      default = {
        bold = true,
        italic = false,
      },
      colors = {
        insert = "#00ff00",
        normal = "#ffffff",
        replace = "#ff0000",
        visual = "#ffff00",
        command = "#ff00ff",
        terminal = "#00ffff",
      },
    },
    vim.api.nvim_create_autocmd({"Colorscheme"}, {
      callback = function()
        vim.api.nvim_set_hl(0, "CursorLineNr", {fg = "#388bfd", bg = "NONE"})
      end,
    })
  }
end
return M
