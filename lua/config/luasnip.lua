-- Based off of TJ DeVries YT Series
-- https://www.youtube.com/watch?v=KtQZRAkgLqo

local ls = require "luasnip"
local types = require "luasnip.util.types"
local rep = require("luasnip.extras").rep

local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local c = ls.choice_node
local d = ls.dynamic_node
local f = ls.function_node


ls.config.set_config {
  -- This tells LuaSnip to remember to keep around the last snippet.
  -- You can jump back into it even if you move outside of the selection
  history = true,

  -- This one is cool cause if you have dynamic snippets, it updates as you type!
  updateevents = "TextChanged,TextChangedI",

  -- Autosnippets:
  enable_autosnippets = true,

  -- Crazy highlights!!
  -- #vid3
  -- ext_opts = nil,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "<-", "Error" } },
      },
    },
  },
}

-- ls.parser
ls.snippets = {
    all = {
        s(
            "curtime",
            f(function()
                return os.date "%D - %H:%M"
            end)
        ),
    },
    css = {
        s(
            "fx",
            fmt(
                [[
                    {} {{
                        {}
                    }}
                ]],
                {
                    i(1),
                    c(2, {
                        t("display: flex;"),
                        t({"display: flex;", "\tflex-flow: row nowrap;"})
                    })
                }
            )
        ),
    },
    javascript = {
        s(
            "cl",
            fmt([[console.log({})]], { i(1) })
        )
    },
    lua = {
        s(
            "req",
            fmt([[local {} = require "{}"]], { i(1), i(0) })
        ),
        s(
            "rd",
            fmt([[local {} = require "{}"]], {
                f(function(import_name)
                    local parts = vim.split(import_name[1][1], ".", true)
                    return parts[#parts] or ""
                end, { 1 }),
                i(1),
            })
        ),
    },
    scss = {
        s(
            "fx",
            fmt(
                [[
                    {} {{
                        {}
                    }}
                ]],
                {
                    i(1),
                    c(2, {
                        t("display: flex;"),
                        t({"display: flex;", "\tflex-flow: row nowrap;"})
                    })
                }
            )
        ),
    },
}

----------------------------------------
-- Keymaps
----------------------------------------
-- <c-k> expand the current item or jump to the next item within the snippet.
vim.keymap.set({ "i", "s" }, "<C-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

-- <c-j> jump back to the previous item in snippet.
vim.keymap.set({ "i", "s" }, "<C-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

-- <c-l> select within a list
vim.keymap.set("i", "<C-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

-- shortcut to source luasnips
vim.keymap.set("n", "<C-q>", "<cmd>source ~/.config/nvim/lua/config/luasnip.lua<CR>")
