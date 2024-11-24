return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "taplo" },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require "lspconfig"
      lspconfig.lua_ls.setup {
        capabilities = capabilities,
      }
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    ft = { "rust" },
    config = function(_, opts) end,
    opts = {
      server = {
        -- on_attach = function()
        --   vim.keymap.set("n", "K", function()
        --     vim.cmd.RustLsp { "hover", "actions" }
        --   end)
        --   vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
        --   vim.keymap.set("n", "gd", vim.lsp.buf.definition)
        --   vim.keymap.set("n", "K", vim.lsp.buf.hover)
        --   vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
        --   vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
        --   vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder)
        --   vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder)
        --   vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition)
        --   vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename)
        --   vim.keymap.set({ "n", "v" }, "<space>cd", vim.lsp.buf.code_action)
        --   vim.keymap.set("n", "gr", vim.lsp.buf.references)
        --   vim.keymap.set("n", "<space>f", function()
        --     vim.lsp.buf.format { async = true }
        --   end)
        -- end,
        settings = {
          ["rust-analyzer"] = {
            cargo = { features = "all" },
            checkOnSave = true,
            procMacro = { enable = true },
            check = {
              command = "check",
              extraArgs = {
                "--",
                "-D",
                "warnings",
                "-D",
                "clippy::unwrap_used",
                "-D",
                "clippy::expect_used",
                "--no-deps",
              },
            },
          },
        },
      },
    },
  },
}
