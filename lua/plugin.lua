-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager
  use 'tpope/vim-rhubarb'
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines

  -- UI to select things (files, grep results, open buffers...)
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-dap.nvim'

  ---------------------------------------
  -- THEMES
  ---------------------------------------

  -- use 'navarasu/onedark.nvim' -- Theme inspired by Atom
  -- use 'rebelot/kanagawa.nvim'
  -- use 'shaunsingh/moonlight.nvim'
  -- use 'EdenEast/nightfox.nvim'
  -- use ({ 'catppuccin/nvim', as = 'catppuccin' })
  -- use 'katawful/kat.nvim'
  -- use 'rmehri01/onenord.nvim'
  -- use 'rktjmp/lush.nvim'
  -- use 'mhartington/oceanic-next'
  -- use 'NTBBloodbath/doom-one.nvim'
  -- use("projekt0n/github-nvim-theme")
  use 'Shatur/neovim-ayu'

  use 'nvim-lualine/lualine.nvim' -- Fancier statusline
  -- use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }}
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
  }

  -- Tmux
  use 'aserowy/tmux.nvim'

  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-refactor'

  use 'windwp/nvim-autopairs'

  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  use("folke/todo-comments.nvim")

  -- Git
  use("lewis6991/gitsigns.nvim")
  use("tpope/vim-fugitive")

  -- Terminal
  use { 'akinsho/toggleterm.nvim', tag ='v1.*' }

  -- Debugging
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'leoluz/nvim-dap-go'

  -- LSPing
  use 'williamboman/nvim-lsp-installer'

  -- Flutter
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

  -- Custom plugins
  use '/Users/nick/Desktop/dev/work-projects/neovim_plugins/ff-cmp'
end)
