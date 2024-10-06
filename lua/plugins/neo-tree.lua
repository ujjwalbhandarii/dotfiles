return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "right", -- Move the file tree to the right
      width = 50, -- You can adjust the width if needed
    },
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files
        hide_dotfiles = false, -- Do not hide dotfiles (files starting with a .)
        hide_gitignored = false, -- Show git ignored files as well (optional)
      },
    },
  },
}
