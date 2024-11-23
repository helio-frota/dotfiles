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

-- show lsp diag error
k.set("n", "<leader>e", ":lua vim.diagnostic.open_float(0)<CR>")

-- open URL under cursor
k.set("n", "gx", ":!open <c-r><c-a><CR>")

-- sort lines
k.set("v", "<leader>si", ":sort i<CR>")

-- float term
k.set("n", "<leader>ft", ":FloatermNew --name=foo --height=0.9 --width=0.8 --autoclose=2 fish <CR> ")
k.set("n", "t", ":FloatermToggle foo<CR>")
k.set("t", "<Esc>", "<C-\\><C-n>:q<CR>")

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

k.set("n", "<C-s>", ":write<CR>", { silent = true, desc = "Save" })
k.set("v", "<C-c>", '"+y', { silent = true, desc = "Copy to clipboard" })
k.set("n", "<C-v>", '"+p', { silent = true, desc = "Paste from clipboard" })
k.set("i", "<C-v>", "<C-r>+", { silent = true, desc = "Paste from clipboard" })

-- Nvim DAP
-- k.set("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
-- k.set("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
-- k.set("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
-- k.set("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
-- k.set("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
-- k.set(
--   "n",
--   "<Leader>dd",
--   "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
--   { desc = "Debugger set conditional breakpoint" }
-- )
-- k.set("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
-- k.set("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })
