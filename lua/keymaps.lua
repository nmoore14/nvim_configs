local map = vim.api.nvim_set_keymap
local options = { noremap=true, silent=true }

-- Dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- NeoTree
map('n', '<C-n>', '<cmd>Neotree toggle<CR>', options)
map('n', '<C-g>', '<cmd>Neotree git_status<CR>', options)

-- Diagnostic Keymaps
map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', options)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', options)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', options)
map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', options)

-- Flutter-tools Keymaps
map('n', '<leader>fo', '<cmd>FlutterOutlineToggle<CR>', options)

-- Dap Keymaps
map('n', '<F5>', "<cmd>lua require'dap'.continue()<CR>", options)
map('n', '<F10>', "<cmd>lua require'dap'.step_over()<CR>", options)
map('n', '<F11>', "<cmd>lua require'dap'.step_into()<CR>", options)
map('n', '<F12>', "<cmd>lua require'dap'.step_out()<CR>", options)
map('n', '<leader>b', "<cmd>lua require'dap'.toggle_breakpoint()<CR>", options)
map('n', '<leader>B', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", options)
map('n', '<leader>lp', "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", options)
map('n', '<leader>dr', "<cmd>lua require'dap'.repl.open()()<CR>", options)
map('n', '<leader>du', "<cmd>lua require'dapui'.toggle()<CR>", options)
