return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	-- Zen mode
	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				width = 100,
			},
		},
		keys = {
			{ "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
		},
	},

	-- Formatting Plugin
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				markdown = { "prettier" },
			},
			format_on_save = { timeout_ms = 500, lsp_fallback = true },
		},
	},
}
