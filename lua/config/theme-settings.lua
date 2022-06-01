-- require('onenord').setup({
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

require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  }
})
