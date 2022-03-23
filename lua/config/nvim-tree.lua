local map = vim.api.nvim_set_keymap
local options = { noremap=true, silent=true }

require'nvim-tree'.setup {}

-- Keymaps
map('n', '<C-n>', ':NvimTreeToggle<CR>', options)
