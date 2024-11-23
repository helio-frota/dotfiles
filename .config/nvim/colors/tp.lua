vim.cmd [[highlight clear]]

local highlight = function(group, bg, fg, attr)
  fg = fg and "guifg=" .. fg or ""
  bg = bg and "guibg=" .. bg or ""
  attr = attr and "gui=" .. attr or ""
  vim.api.nvim_command("highlight " .. group .. " " .. fg .. " " .. bg .. " " .. attr)
end

local comments = "#008000"
local selected_text = "#0078d7"
local chars_and_strings = "#008080"
local numbers = "#AD4011"
local brackets = "#ff0000"
local error = "#ff0000"
local cursor_line = "#fffbf0"
local keywords1 = "#0000ff"
local keywords2 = "#000080"
local line_number = "#c0c0c0"
local text = "#000000"
local folder = "#ffd86c"
local match_search = "#ffd86c"
local warning = "#ffd86c"
local border = "#465a7d"
local folder_name = "#465a7d"
local title = "#99b4d1"
local string_escape = "#465a7d"
local background = "#fefefe"

highlight("Character", nil, chars_and_strings, nil)
highlight("IncSearch", match_search, nil, nil)
highlight("Comment", nil, comments, "italic")
highlight("CursorLine", cursor_line, nil, nil)
highlight("String", nil, chars_and_strings, nil)
highlight("StringEscape", nil, string_escape, nil)
highlight("Function", nil, keywords2, nil)
highlight("FunctionBuiltin", nil, keywords2, nil)
highlight("FunctionMacro", nil, keywords2, nil)
highlight("PunctBracket", nil, brackets, nil)
highlight("Keyword", nil, keywords1, nil)
highlight("LineNr", nil, line_number, nil)
highlight("Number", nil, numbers, nil)
highlight("Normal", background, text, nil)
highlight("Visual", selected_text, background, nil)

-- telescope
highlight("TelescopeNormal", background, nil, nil)
highlight("TelescopeMatching", match_search, nil, nil)
highlight("TelescopePreviewLine", match_search, nil, nil)
highlight("TelescopeTitle", nil, title, nil)
highlight("TelescopeSelection", selected_text, background, nil)
highlight("TelescopeBorder", nil, border, nil)

-- barbar
highlight("BufferCurrent", background, nil, nil)
highlight("BufferCurrentMod", background, nil, nil)
highlight("BufferCurrentIndex", background, nil, nil)
highlight("BufferCurrentSign", background, nil, nil)
highlight("BufferInactive", background, nil, nil)
highlight("BufferInactiveMod", background, nil, nil)
highlight("BufferInactiveIndex", background, nil, nil)
highlight("BufferInactiveSign", background, nil, nil)
highlight("BufferVisible", background, nil, nil)
highlight("BufferVisibleMod", background, nil, nil)
highlight("BufferVisibleIndex", background, nil, nil)
highlight("BufferVisibleSign", background, nil, nil)
highlight("BufferAlternate", background, nil, nil)
highlight("BufferError", error, nil, nil)
highlight("BufferWarning", warning, nil, nil)
highlight("BufferTabpageFill", background, nil, nil)
highlight("BufferTabpages", background, nil, nil)

-- nvimtree
highlight("NvimTreeNormal", nil, text, nil)
highlight("NvimTreeFolderName", nil, folder_name, nil)
highlight("NvimTreeFolderIcon", nil, folder, nil)
highlight("NvimTreeOpenedFolderName", nil, folder_name, nil)
highlight("NvimTreeFileName", nil, text, nil)
highlight("NvimTreeWinSeparator", nil, border, nil)

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
