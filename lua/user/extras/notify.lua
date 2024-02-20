local M = {
  "rcarriga/nvim-notify",
}
function M.config()
  require('notify').setup ({
    background_colour = "#000000"
  })
end
return M
