return {
  "e-q/okcolors.nvim",
  name = "okcolors",
  config = function()
    require("okcolors").setup {
      variant = "sharp",
      vim.cmd "colorscheme okcolors",
    }
  end,
  lazy = false,
  priority = 1000,
}
