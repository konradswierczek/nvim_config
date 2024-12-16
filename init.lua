require("config.lazy")
-- Apply color column only for Python files
vim.cmd [[
  autocmd FileType python setlocal colorcolumn=80
  autocmd FileType python highlight ColorColumn ctermbg=red guibg=red
]]

-- Define the key mapping function
function map(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

-- NeoTree Key Mappings
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

