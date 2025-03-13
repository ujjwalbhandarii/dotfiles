vim.opt.swapfile = false

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if vim.fn.empty(vim.fn.glob(lazypath)) == 1 then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
	spec = {
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
			opts = {
				defaults = {
					autocmds = true,
					keymaps = true,
					options = true,
				},
			},
		},
		{ "MunifTanjim/nui.nvim", lazy = true },
		{ "nvim-lua/plenary.nvim", lazy = true },
		{ "folke/tokyonight.nvim", lazy = true },
		{ import = "lazyvim.plugins.extras.lang.json" },
		{ import = "lazyvim.plugins.extras.lang.tailwind" },
		--		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "plugins" },
	},
	defaults = {
		lazy = false,
		version = false,
	},
	checker = { enabled = true },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tutor",
				"tohtml",
				"matchit",
				"tarPlugin",
				"zipPlugin",
				"matchparen",
				"netrwPlugin",
				"snacks.nvim",
			},
		},
	},
	debug = false,
})
