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
o.spell = true
o.spelllang = "en_us"

vim.lsp.inlay_hint.enable(true)

local group = vim.api.nvim_create_augroup("autosave", {})

vim.api.nvim_create_autocmd("User", {
  pattern = "AutoSaveWritePost",
  group = group,
  callback = function(opts)
    if opts.data.saved_buffer ~= nil then
      local filename = vim.api.nvim_buf_get_name(opts.data.saved_buffer)
      print("AutoSave: Saved " .. filename .. " at " .. vim.fn.strftime "%H:%M:%S")
    end
  end,
})
