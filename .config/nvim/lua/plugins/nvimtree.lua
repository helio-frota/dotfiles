-- File Explorer / Tree
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Fancy icon support
  },
  opts = {
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    renderer = {
      icons = {
        show = {
          git = true,
        },
      },
    },
    diagnostics = {
      enable = true,
      show_on_dirs = false,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}
