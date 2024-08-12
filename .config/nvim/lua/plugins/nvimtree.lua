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
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}
