return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "right", -- Move the file tree to the right
      width = 60, -- Adjust the width as needed
      -- You can also set the height if you want to restrict it vertically
    },
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files
        hide_dotfiles = false, -- Do not hide dotfiles (files starting with a .)
        hide_gitignored = false, -- Show git ignored files as well (optional)
      },
      follow_current_file = true, -- Focus on the current file in the tree
      group_empty_dirs = true, -- Group empty directories together
      -- You can also add other filtering options if needed
    },
    default_component_configs = {
      indent = {
        indent_size = 2, -- Set indent size
        padding = 1, -- Extra padding for indent
      },
      icon = {
        folder_empty = "📁", -- Set icon for empty folders (customize if needed)
        folder_open = "📂", -- Set icon for open folders
        folder_closed = "📁", -- Set icon for closed folders
      },
    },
  },
}
