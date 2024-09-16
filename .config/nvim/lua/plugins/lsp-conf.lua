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
        ensure_installed = { "lua_ls", "rust_analyzer", "taplo" },
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

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    -- event = { "BufReadPre *.rs", "BufNewFile *.rs" },
    lazy = false,
    ft = { "rust" },
    config = function(_, opts)
      vim.g.rustaceanvim = vim.tbl_deep_extend("force", {}, opts or {})
    end,
    opts = {
      server = {
        settings = {
          ["rust-analyzer"] = {

            cargo = { features = "all" },
            checkOnSave = true,
            procMacro = { enable = true },
            check = {
              command = "clippy",
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
