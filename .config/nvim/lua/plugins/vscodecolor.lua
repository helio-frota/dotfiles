return {
  "Mofiqul/vscode.nvim",
  config = function()
    require("vscode").setup {
      style = "light",
      transparent = false,
      italic_comments = true,
      underline_links = true,
      disable_nvimtree_bg = true,
    }
    require("vscode").load()
  end,
  lazy = false,
  priority = 1000,
}
