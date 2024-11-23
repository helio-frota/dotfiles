vim.cmd [[highlight clear]]

local hl = function(group, bg, fg, attr)
  fg = fg and "guifg=" .. fg or ""
  bg = bg and "guibg=" .. bg or ""
  attr = attr and "gui=" .. attr or ""
  vim.api.nvim_command("highlight " .. group .. " " .. fg .. " " .. bg .. " " .. attr)
end

local comments = "#008000"
local info = "#008000"
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
local match_search = "#daa520"
local warning = "#daa520"
local border = "#465a7d"
local folder_name = "#465a7d"
local folder = "#465a7d"
local title = "#99b4d1"
local string_escape = "#465a7d"
local background = "#fefefe"

hl("Character", nil, chars_and_strings, nil)
hl("IncSearch", match_search, nil, nil)
hl("Comment", nil, comments, "italic")
hl("CursorLine", cursor_line, nil, nil)
hl("String", nil, chars_and_strings, nil)
hl("StringEscape", nil, string_escape, nil)
hl("Function", nil, keywords2, nil)
hl("FunctionBuiltin", nil, keywords2, nil)
hl("FunctionMacro", nil, keywords2, nil)
hl("PunctBracket", nil, brackets, nil)
hl("Keyword", nil, keywords1, nil)
hl("Keyword2", nil, keywords2, nil)
hl("LineNr", nil, line_number, nil)
hl("Number", nil, numbers, nil)
hl("Normal", background, text, nil)
hl("Visual", selected_text, background, nil)

-- telescope
hl("TelescopeNormal", background, nil, nil)
hl("TelescopeMatching", match_search, nil, nil)
hl("TelescopePreviewLine", match_search, nil, nil)
hl("TelescopeTitle", nil, title, nil)
hl("TelescopeSelection", selected_text, background, nil)
hl("TelescopeBorder", nil, border, nil)

-- barbar
hl("BufferCurrent", background, nil, nil)
hl("BufferCurrentMod", background, nil, nil)
hl("BufferCurrentIndex", background, nil, nil)
hl("BufferCurrentSign", background, nil, nil)
hl("BufferInactive", background, nil, nil)
hl("BufferInactiveMod", background, nil, nil)
hl("BufferInactiveIndex", background, nil, nil)
hl("BufferInactiveSign", background, nil, nil)
hl("BufferVisible", background, nil, nil)
hl("BufferVisibleMod", background, nil, nil)
hl("BufferVisibleIndex", background, nil, nil)
hl("BufferVisibleSign", background, nil, nil)
hl("BufferAlternate", background, nil, nil)
hl("BufferError", error, nil, nil)
hl("BufferWarning", warning, nil, nil)
hl("BufferTabpageFill", background, nil, nil)
hl("BufferTabpages", background, nil, nil)

-- nvimtree
hl("NvimTreeNormal", nil, text, nil)
hl("NvimTreeFolderName", nil, folder_name, nil)
hl("NvimTreeFolderIcon", nil, folder, nil)
hl("NvimTreeOpenedFolderName", nil, folder_name, nil)
hl("NvimTreeFileName", nil, text, nil)
hl("NvimTreeWinSeparator", nil, border, nil)

-- nvim-notify
hl("NotifyINFOBorder", nil, border, nil)
hl("NotifyWARNBorder", nil, border, nil)
hl("NotifyERRORBorder", nil, border, nil)
hl("NotifyDEBUGBorder", nil, border, nil)
hl("NotifyTRACEBorder", nil, border, nil)
hl("NotifyINFOTitle", nil, info, nil)
hl("NotifyINFOIcon", nil, info, nil)
hl("NotifyERRORTitle", nil, error, nil)
hl("NotifyERRORIcon", nil, error, nil)
hl("NotifyWARNTitle", nil, warning, nil)
hl("NotifyWARNIcon", nil, warning, nil)

-- treesitter
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
vim.api.nvim_set_hl(0, "@type", { link = "Keyword2" })
vim.api.nvim_set_hl(0, "@type.builtin", { link = "Keyword2" })
vim.api.nvim_set_hl(0, "@attribute", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@variable.builtin", { link = "Keyword" })

-- noice
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = "#465a7d", bg = "NONE" })

-- NoiceLspProgressClient: Nome do cliente LSP durante progresso.
-- NoiceLspProgressSpinner: Spinner de progresso do LSP.
-- NoiceLspProgressTitle: Título do progresso do LSP.
