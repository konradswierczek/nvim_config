require("config.lazy")
-- Apply color column only for Python files
vim.cmd [[
  autocmd FileType python setlocal colorcolumn=80
  autocmd FileType python highlight ColorColumn ctermbg=red guibg=red
]]

