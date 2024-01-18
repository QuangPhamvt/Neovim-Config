local M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "AndreM222/copilot-lualine",
  },
}

function M.config()
  local icons = require("user.icons")
  local filetype = {
    function()
      local filetype = vim.bo.filetype
      local upper_case_filetypes = {
        "json",
        "jsonc",
        "yaml",
        "toml",
        "css",
        "scss",
        "html",
        "xml",
        "lua",
      }

      if vim.tbl_contains(upper_case_filetypes, filetype) then
        return filetype:upper()
      end

      return filetype
    end,
  }
  require("lualine").setup {
    theme = "tokyonight",
    options = {
      icons_enabled = true,
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      -- component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      component_separators = { left = icons.ui.DividerRight, right = icons.ui.DividerLeft },
      -- section_separators = { left = "", right = "" },
      ignore_focus = { "NvimTree" },
    },
    sections = {
      lualine_a = { {"branch", icon =""} },
      lualine_b = { "diagnostics", "diff" },
      lualine_c = { "filename" },
      lualine_x = {
          {
              'copilot',
              -- Default values
              symbols = {
                  status = {
                      icons = {
                          enabled = "",
                          sleep = " ",   -- auto-trigger disabled
                          disabled = " ",
                          warning = " ",
                          unknown = " "
                      },
                      hl = {
                          enabled = "#50FA7B",
                          sleep = "#AEB7D0",
                          disabled = "#6272A4",
                          warning = "#FFB86C",
                          unknown = "#FF5555"
                      }
                  },
                  spinners = require("copilot-lualine.spinners").dots,
                  spinner_color = "#6272A4"
              },
              show_colors = false,
              show_loading = true,
        },
        "",
        "encoding",
        "fileformat",
        "filetype",
      },
      lualine_y = { "progress" },
      lualine_z = { "location"},
    },
    -- extensions = { "quickfix", "man", "fugitive", "oil" },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
