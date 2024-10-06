return {
  "nvim-tree/nvim-tree.lua", -- Specify the plugin repository
  config = function()
    require("nvim-tree").setup({
      view = {
        side = "right", -- Move the file tree to the right
        width = 30, -- Customize width
      },
    })
  end,
}
