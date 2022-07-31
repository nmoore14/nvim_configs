local map = vim.api.nvim_set_keymap
local options = { noremap=true, silent=true }

-- Window Navigation
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)
map('n', '<C-l>', '<C-w>l', options)

-- Buffers navigate
map("n", "bj", ":bp<CR>", options)
map("n", "bk", ":bn<CR>", options)
map("n", "<Tab>", ":bn<CR>", options)
map("n", "<S-Tab>", ":bp<CR>", options)

-- Dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- NeoTree
map('n', '<C-n>', '<cmd>Neotree toggle<CR>', options)
map('n', '<C-b>', '<cmd>Neotree buffers<CR>', options)
map('n', '<C-g>', '<cmd>Neotree git_status<CR>', options)

-- Diagnostic Keymaps
map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', options)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', options)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', options)
map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', options)

-- Flutter-tools Keymaps
map('n', '<leader>fo', '<cmd>FlutterOutlineToggle<CR>', options)

-- Custom Mappings
map('n', '<leader>space', [[<cmd>lua require('telescope.builtin').buffers()<CR>]] , options)
map('n', '<leader>sf', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], options)
map('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], options)
map('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], options)
map('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]], options)
map('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], options)
map('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], options)
map('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], options)
map('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], options)

-- DAP Telescope Mappings
map('n', '<leader>dc', '<cmd>Telescope dap commands<CR>', options)
map('n', '<leader>dl', '<cmd>Telescope dap list_breakpoints<CR>', options)
map('n', '<leader>dv', '<cmd>Telescope dap variables<CR>', options)
map('n', '<leader>df', '<cmd>Telescope dap frames<CR>', options)

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

-- Toggle Term Keymaps
map('n', '<F6>', "<cmd>exe v:count1 . 'ToggleTerm'<CR>", options)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", options)
map("v", ">", ">gv", options)
