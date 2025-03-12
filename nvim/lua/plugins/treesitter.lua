return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"python",
				"lua",
				"javascript",
				"typescript",
				"tsx",
				"html",
				"css",
				"markdown",
				"mdx",
			},
			ignore_install = { "phpdoc" },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
			sync_install = false, -- Set to true if you want to install parsers synchronously
			auto_install = true, -- Automatically install missing parsers when entering buffer
			modules = {}, -- can specify additional modules here
		})
	end,
}
