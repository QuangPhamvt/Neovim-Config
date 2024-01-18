local M = {
  "andymass/vim-matchup",
}

function M.config ()
  vim.g.matchup_matchparen_offscreen = {
    method = 'null',
  }
  vim.g.matchup_matchpref = { html = { nolists = false } }
end
return M
