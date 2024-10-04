local k = vim.keymap

-- window navigation
k.set("n", "<C-k>", ":wincmd k<CR>")
k.set("n", "<C-j>", ":wincmd j<CR>")
k.set("n", "<C-h>", ":wincmd h<CR>")
k.set("n", "<C-l>", ":wincmd l<CR>")

-- git-blame toggle
k.set("n", "<leader>gb", ":GitBlameToggle<CR>")

-- toggle white-space
k.set("n", "<leader>ws", ":ToggleWhitespace<CR>")

-- Tab management
k.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
k.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
k.set("n", "<leader>tn", ":tabn<CR>") -- next tab
k.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- nvim tree toggle
k.set("n", "<C-n>", ":NvimTreeToggle<CR>")

-- inlay hint toggle
k.set("n", "<C-i>", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)

-- open URL under cursor
k.set("n", "gx", ":!open <c-r><c-a><CR>")

-- telescope
k.set("n", "<leader>ff", require("telescope.builtin").find_files, {})
k.set("n", "<leader>fg", require("telescope.builtin").live_grep, {})
k.set("n", "<leader>fb", require("telescope.builtin").buffers, {})
k.set("n", "<leader>fh", require("telescope.builtin").help_tags, {})
k.set("n", "<leader>fs", require("telescope.builtin").current_buffer_fuzzy_find, {})
k.set("n", "<leader>fo", require("telescope.builtin").lsp_document_symbols, {})
k.set("n", "<leader>fi", require("telescope.builtin").lsp_incoming_calls, {})
k.set("n", "<leader>fm", function()
  require("telescope.builtin").treesitter { default_text = ":method:" }
end)
