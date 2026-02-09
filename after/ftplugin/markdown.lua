vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.textwidth = 100
vim.opt_local.colorcolumn = "101"

-- Wrap and check for spelling
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.spell = true

-- Add bullets in markdown files
vim.opt_local.formatoptions:append("r")
vim.opt_local.formatoptions:append("o")
vim.opt_local.comments = {
  "b:- [ ]",
  "b:- [x]",
  "b:-",
  "b:*",
  "b:+",
}
