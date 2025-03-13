return {
	-- Better code comments
	{
		"numToStr/Comment.nvim",
		keys = {
			{ "gc", mode = { "n", "v" }, desc = "Comment toggle" },
			{ "gb", mode = { "n", "v" }, desc = "Block comment toggle" },
		},
		config = true,
		lazy = false,
	},

	-- Multiple cursors
	{
		"mg979/vim-visual-multi",
		keys = {
			"<C-n>",
			"<C-Up>",
			"<C-Down>",
		},

		-- Multiple cursors
		{
			"mg979/vim-visual-multi",
			keys = {
				"<C-n>",
				"<C-Up>",
				"<C-Down>",
			},
		},
	},
}
