local opt = vim.opt
local g = vim.g

vim.api.nvim_set_keymap('', ';', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ';'
vim.g.maplocalleader = ';'

------------------------------------
-- General
------------------------------------
opt.mouse = 'a'                     -- Enable mouse support
opt.clipboard = 'unnamedplus'       -- Copy/paste to system clipboard
opt.swapfile = false                -- Don't use swapfiles

------------------------------------
-- UI
------------------------------------
opt.number = true                   -- Set the line numbers
opt.showmatch = true                -- Highlight the matching paranthese
opt.foldmethod = 'marker'           -- Enable folding
opt.cursorline = true               -- Enable highlighted cursor line
opt.colorcolumn = '80'              -- Line length column at 80
opt.splitright = true               -- New vertical splits right
opt.splitbelow = true               -- New horizontal splits below
opt.ignorecase = true               -- Ignore case letters when searching
opt.smartcase = true                -- Ignore lowercase for the whole pattern
opt.linebreak = true                -- Wrap on word boundary

-- Tabs and Indents
opt.tabstop = 4                     -- 1 tab == 4 spaces
opt.shiftwidth = 4                  -- Shift 4 spaces when you tab
opt.softtabstop = 4
opt.expandtab = true                -- Use spaces instead of tabs
opt.smartindent = true              -- Autoindent new lines

opt.backspace = 'indent,eol,start'


-- Search stuff

opt.completeopt = 'menuone,noselect'

-- Highlight on Yank
vim.cmd [[
    augroup YankHighlight
        autocmd!
        autocmd TextYankPost * silent! lua vim.highlight.on_yank()
    augroup end
]]

-- Blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_show_trailing_blankline_indent = false

-- Don't autocomment new lines
vim.cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Remove line lenght column for certain files
vim.cmd [[autocmd FileType text,markdown,html,xhtml setlocal cc=0]]

-- Color scheme
opt.termguicolors = true
vim.cmd [[
    colorscheme kanagawa
]]

