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
  -- {
  --   "mfussenegger/nvim-dap",
  --   config = function()
  --     local dap, dapui = require "dap", require "dapui"
  --     dap.listeners.before.attach.dapui_config = function()
  --       dapui.open()
  --     end
  --     dap.listeners.before.launch.dapui_config = function()
  --       dapui.open()
  --     end
  --     dap.listeners.before.event_terminated.dapui_config = function()
  --       dapui.close()
  --     end
  --     dap.listeners.before.event_exited.dapui_config = function()
  --       dapui.close()
  --     end
  --   end,
  -- },
  -- {
  --   "rcarriga/nvim-dap-ui",
  --   dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  --   config = function()
  --     require("dapui").setup()
  --   end,
  -- },
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    ft = { "rust" },
    config = function(_, opts)
      vim.g.rustaceanvim = vim.tbl_deep_extend("force", {}, opts or {})
      -- dbg config
      -- local mason_registry = require "mason-registry"
      -- local codelldb = mason_registry.get_package "codelldb"
      -- local extension_path = codelldb:get_install_path() .. "/extension/"
      -- local codelldb_path = extension_path .. "adapter/codelldb"
      -- local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
      -- local cfg = require "rustaceanvim.config"

      -- vim.g.rustaceanvim = {
      --   dap = {
      --     adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
      --   },
      -- }
      -- dbg config
    end,
    opts = {
      server = {
        on_attach = function()
          vim.keymap.set("n", "K", function()
            vim.cmd.RustLsp { "hover", "actions" }
          end)
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition)
          vim.keymap.set("n", "K", vim.lsp.buf.hover)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
          vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder)
          vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder)
          vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition)
          vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename)
          vim.keymap.set({ "n", "v" }, "<space>ct", vim.lsp.buf.code_action)
          vim.keymap.set("n", "gr", vim.lsp.buf.references)
          vim.keymap.set("n", "<space>f", function()
            vim.lsp.buf.format { async = true }
          end)
        end,
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
