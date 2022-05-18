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

require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = true,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = false,       -- adjust window separators highlight for laststatus=3
    colors = {},
    overrides = {},
})
