local o = vim.opt

-- line numbers
o.nu = true

-- tabs, indent and wrap
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.wrap = false

-- search
o.hlsearch = false
o.incsearch = true
o.ignorecase = true
o.smartcase = true

-- appearance
o.termguicolors = true
o.cursorline = true
o.background = "light"
o.colorcolumn = "120"
o.signcolumn = "yes"

-- other
o.swapfile = false
o.backup = false
o.scrolloff = 8
o.updatetime = 50
o.foldmethod = "manual"
o.clipboard:append "unnamedplus"

-- https://github.com/christoomey/vim-tmux-navigator?tab=readme-ov-file#netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.lsp.inlay_hint.enable(true)
