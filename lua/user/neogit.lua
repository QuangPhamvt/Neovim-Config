local M = {
  "neogitorg/neogit",
  event = "VeryLazy",
}

function M.config () 
  local icons = require("user.icons")
  require"neogit".setup{
    auto_refresh = true,
    disable_builtin_notifications = false,
    use_magit_keybindings = false,
    -- Change the default keybindings
    kind = "tab",
    -- Change the default way of opening the commit popup
    commit_popup = {
      kind = "split",
    },
    popup = {
      kind = "split",
    },
    signs = {
      -- {Closed, Opened}
      section = {icons.ui.ChevronRight, icons.ui.ChevronShortDown},
      item = {icons.ui.ChevronRight, icons.ui.ChevronShortDown},
      hunks = { "", ""}
    },
  }
end
return M
