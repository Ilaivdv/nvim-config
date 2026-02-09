-- if vim.version().major == 0 and vim.version().minor < 11 then
--   return
-- end

-- vim.cmd([[autocmd FileType checkhealth :set modifiable | silent! %s/\v( ?[^\x00-\x7F])//g]])

-- vim.cmd([[autocmd FileType checkhealth :set modifiable | silent! %s/✅//g]])
-- vim.cmd([[autocmd FileType checkhealth :set modifiable | silent! %s/⚠️//g]])
-- vim.cmd([[autocmd FileType checkhealth :set modifiable | silent! %s/❌//g]])

-- local ui_icons = require("ui.icons")
-- vim.cmd("set modifiable | %s/⚠️/" .. ui_icons.warn .. "/g")
