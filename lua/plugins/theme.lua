return {
  -- Install the vscode theme
  "Mofiqul/vscode.nvim",
  config = function()
    -- Load the colorscheme
    vim.cmd.colorscheme("vscode")

    -- Optional: Customize theme settings
    require("vscode").setup({
      style = "dark", -- Options: 'dark' or 'light'
      transparent = false, -- Disable transparency
      italic_comments = true, -- Enable italic comments
      disable_nvimtree_bg = true, -- Prevent NVimTree background color
    })
  end,
}
