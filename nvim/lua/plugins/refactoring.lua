return {
	-- Incremental rename
	{
		"smjonas/inc-rename.nvim",
		cmd = "IncRename",
		keys = {
			{
				"<leader>rn",
				function()
					return ":IncRename " .. vim.fn.expand("<cword>")
				end,
				desc = "Incremental rename",
				mode = "n",
				noremap = true,
				expr = true,
			},
		},
		config = true,
	},

	-- Refactoring tool
	{
		"ThePrimeagen/refactoring.nvim",
		keys = {
			{
				"<leader>r",
				function()
					require("refactoring").select_refactor({
						show_success_message = true,
					})
				end,
				mode = "v",
				noremap = true,
				silent = true,
				expr = false,
			},
		},
		opts = {},
	},

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
