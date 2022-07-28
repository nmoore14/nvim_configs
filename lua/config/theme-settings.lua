require("github-theme").setup({
  theme_style = "dimmed",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})-- require('onenord').setup({
--   theme = dark, -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
--   borders = true, -- Split window borders
--   fade_nc = true, -- Fade non-current windows, making them more distinguishable
--   styles = {
--     comments = "italic", -- Style that is applied to comments: see `highlight-args` for options
--     strings = "NONE", -- Style that is applied to strings: see `highlight-args` for options
--     keywords = "NONE", -- Style that is applied to keywords: see `highlight-args` for options
--     functions = "NONE", -- Style that is applied to functions: see `highlight-args` for options
--     variables = "NONE", -- Style that is applied to variables: see `highlight-args` for options
--     diagnostics = "underline", -- Style that is applied to diagnostics: see `highlight-args` for options
--   },
--   disable = {
--     background = false, -- Disable setting the background color
--     cursorline = false, -- Disable the cursorline
--     eob_lines = true, -- Hide the end-of-buffer lines
--   },
--   custom_highlights = {}, -- Overwrite default highlight groups
--   custom_colors = {}, -- Overwrite default colors
-- })

-- require('kanagawa').setup({
--     undercurl = true,           -- enable undercurls
--     commentStyle = "italic",
--     functionStyle = "NONE",
--     keywordStyle = "italic",
--     statementStyle = "bold",
--     typeStyle = "NONE",
--     variablebuiltinStyle = "italic",
--     specialReturn = true,       -- special highlight for the return keyword
--     specialException = true,    -- special highlight for exception handling keywords
--     transparent = true,        -- do not set background color
--     dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
--     globalStatus = false,       -- adjust window separators highlight for laststatus=3
--     colors = {},
--     overrides = {},
-- })

-- require('nightfox').setup({
--   options = {
--     -- Compiled file's destination location
--     compile_path = vim.fn.stdpath("cache") .. "/nightfox",
--     compile_file_suffix = "_compiled", -- Compiled file suffix
--     transparent = true,    -- Disable setting background
--     terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--     dim_inactive = false,   -- Non focused panes set to alternative background
--     styles = {              -- Style to be applied to different syntax groups
--       comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
--       conditionals = "NONE",
--       constants = "NONE",
--       functions = "NONE",
--       keywords = "NONE",
--       numbers = "NONE",
--       operators = "NONE",
--       strings = "NONE",
--       types = "NONE",
--       variables = "NONE",
--     },
--     inverse = {             -- Inverse highlight for different types
--       match_paren = false,
--       visual = false,
--       search = false,
--     },
--     modules = {             -- List of various plugins and additional options
--       -- ...
--     },
--   }
-- })

-- require('doom-one').setup({
--     cursor_coloring = true,
--     terminal_colors = true,
--     italic_comments = true,
--     enable_treesitter = true,
--     plugins_integrations = {
--         telescope = true,
--         indent_blankline = true,
--     }
-- })

-- Lua
-- require('onedark').setup  {
--     -- Main options --
--     style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--     transparent = false,  -- Show/hide background
--     term_colors = true, -- Change terminal color as per the selected theme style
--     ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--     cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--     -- toggle theme style ---
--     toggle_style_key = '<leader>ts', -- Default keybinding to toggle
--     toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
--
--     -- Change code style ---
--     -- Options are italic, bold, underline, none
--     -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
--     code_style = {
--         comments = 'italic',
--         keywords = 'none',
--         functions = 'none',
--         strings = 'none',
--         variables = 'none'
--     },
--
--     -- Custom Highlights --
--     colors = {}, -- Override default colors
--     highlights = {}, -- Override highlight groups
--
--     -- Plugins Config --
--     diagnostics = {
--         darker = true, -- darker colors for diagnostic
--         undercurl = true,   -- use undercurl instead of underline for diagnostics
--         background = true,    -- use background color for virtual text
--     },
-- }
