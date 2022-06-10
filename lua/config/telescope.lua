local map = vim.api.nvim_set_keymap
local options = { noremap=true, silent=true }

require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<C-u>'] = false,
                ['<C-d>'] = false,
            },
        },
    },
    extensions = {
        ['ui-select'] = {
            require('telescope.themes').get_dropdown {}
        }
    }
}

require('telescope').load_extension('ui-select')
require('telescope').load_extension('dap')

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
