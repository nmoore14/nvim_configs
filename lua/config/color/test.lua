local colors = {
	dark = "#2f2f2f",
	red = "#ff2f2f",
	green = "#549a6f",
    orange = "#ccac00",
	blue = "#0099cc",
	purple = "#79c4cc",
	pink = "#cc68c8",
	light = "#afc2c2",
}

-- Required opts table
local opts = {
        contrast = "soft",
        colors_name = "test",
        integrations = {
                "treesitter",
                "lsp",
                "ts_rainbow",
                "indent_blankline",
                "startify",
                "coc",
                "cmp",
                "fugitive",
        },
        comment_style = {"italic"},
        render = true,
}

require("kreative.color")["init-colors"](colors)
require("kreative.main").init(opts)
