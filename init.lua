-- Custom Settings and Loaders
require('plugin')
require('settings')
require('neovide-settings')
require('keymaps')

-- Theme plugins
require('config/theme-settings')
-- require('config/color/test')

-- Plugin settings
require('config/treesitter')
require('config/lspconfig')
require('config/telescope')
require('config/nvim-cmp')
require('config/lualine')
require('config/comment')
require('config/gitsigns')
require('config/tmux')
require('config/autopairs')
require('config/toggle-term')

-- require('config/nvim-tree')
require('config/neotree')
require('config/luasnip')

-- DAP setup
require('config/nvim-dap-ui')
require('config/nvim-dap-vt')
require('config/nvim-dap-go')
-- DAP Languages
require('config/dap/php')

-- Custom plugins
