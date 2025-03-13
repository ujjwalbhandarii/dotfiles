return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		-- opts = { transparent_background = true },
		priority = 1000,
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},

	-- File tree
	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",
	-- 	branch = "v3.x",
	-- 	dependencies = {
	-- 		"MunifTanjim/nui.nvim",
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-tree/nvim-web-devicons",
	-- 	},
	-- 	keys = {
	-- 		{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "File Explorer" },
	-- 	},
	-- },

	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "catppuccin",
			},
		},
	},

	-- Smooth scrolling
	{
		"karb94/neoscroll.nvim",
		config = true,
	},

	-- bufferline
	{
		"akinsho/bufferline.nvim",
		enabled = true,
	},

	-- colorizer
	{
		"NvChad/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				tailwind = true,
			},
		},
	},
}
