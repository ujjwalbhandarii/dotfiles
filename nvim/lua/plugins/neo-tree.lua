return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
			window = {
				position = "right",
				width = 55,
			},
		},
	},
}
