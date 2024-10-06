return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "kyazdani42/nvim-web-devicons", opt = true },
  config = function()
    require("lualine").setup({
      options = {
        theme = "vscode", -- Use the vscode theme for lualine
      },
    })
  end,
}
