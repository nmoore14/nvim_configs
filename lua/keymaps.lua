local map = vim.api.nvim_set_keymap
local options = { noremap=true, silent=true }

-- Dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- NeoTree
map('n', '<leader>n', '<cmd>Neotree toggle<CR>', { noremap = true, silent = true })
map('n', '<leader>g', '<cmd>Neotree git_status<CR>', { noremap = true, silent = true })

-- Diagnostic Keymaps
map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })

