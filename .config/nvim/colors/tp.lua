vim.cmd [[highlight clear]]

local highlight = function(group, bg, fg, attr)
  fg = fg and "guifg=" .. fg or ""
  bg = bg and "guibg=" .. bg or ""
  attr = attr and "gui=" .. attr or ""
  vim.api.nvim_command("highlight " .. group .. " " .. fg .. " " .. bg .. " " .. attr)
end

local Color0 = "#008000"
local Color1 = "#008080"
local Color10 = "#b6b2b2"
local Color11 = "#b6b4b4"
local Color12 = "#000"
local Color13 = "#FF0000"
local Color14 = "#0000AA"
local Color15 = "#777777"
local Color16 = "#FFBC5D"
local Color2 = "#AD4011"
local Color3 = "#000000"
local Color4 = "#1100FF"
local Color5 = "#91A0B9"
local Color6 = "#3D5072"
local Color7 = "#ffffff"
local Color8 = "#000"
local Color9 = "#FFFAEE"

highlight("Character", nil, Color2, nil)
highlight("IncSearch", Color16, nil, nil)
highlight("Comment", nil, Color0, "italic")
highlight("CursorLine", Color9, nil, nil)
highlight("String", nil, Color1, nil)
highlight("StringEscape", nil, Color15, nil)
highlight("Function", nil, Color14, nil)
highlight("FunctionBuiltin", nil, Color14, nil)
highlight("FunctionMacro", nil, Color14, nil)
highlight("PunctBracket", nil, Color13, nil)
highlight("Keyword", nil, Color4, nil)
highlight("LineNr", nil, Color10, nil)
highlight("Number", nil, Color2, nil)
highlight("Normal", Color7, Color8, nil)
highlight("StatusLine", Color5, Color8, nil)
highlight("TelescopeNormal", Color12, nil, nil)
highlight("TelescopeMatching", Color16, nil, nil)
highlight("TelescopeTitle", nil, Color8, nil)
highlight("NvimTreeNormal", nil, Color8, nil)
highlight("NvimTreeFolderName", nil, Color14, nil)
highlight("NvimTreeOpenedFolderName", nil, Color4, nil)
highlight("NvimTreeFileName", nil, Color8, nil)

--TODO: fix nvimtree, telescope and noice

vim.api.nvim_set_hl(0, "@character", { link = "Character" })
vim.api.nvim_set_hl(0, "@number", { link = "Number" })
vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
vim.api.nvim_set_hl(0, "@function", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.builtin", { link = "FunctionBuiltin" })
vim.api.nvim_set_hl(0, "@function.macro", { link = "FunctionMacro" })
vim.api.nvim_set_hl(0, "@constant.macro", { link = "FunctionMacro" })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "PunctBracket" })
vim.api.nvim_set_hl(0, "@string", { link = "String" })
vim.api.nvim_set_hl(0, "@string.escape", { link = "StringEscape" })
vim.api.nvim_set_hl(0, "@keyword", { link = "Keyword" })
