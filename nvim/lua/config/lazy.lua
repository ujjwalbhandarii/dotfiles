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

-- Disable swap files
vim.opt.swapfile = false

require("lazy").setup({
	spec = {
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
			-- opts = {
			-- 	colorscheme = "sonokai",
			-- 	news = {
			-- 		lazyvim = true,
			-- 		neovim = true,
			-- 	},
			-- },
		},
		{ import = "lazyvim.plugins.extras.linting.eslint" },
		{ import = "lazyvim.plugins.extras.formatting.prettier" },
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.lang.json" },
		{ import = "lazyvim.plugins.extras.lang.tailwind" },
		{ import = "lazyvim.plugins.extras.util.mini-hipatterns" },
		{ import = "plugins" },
	},
	defaults = {
		lazy = false,
		version = false,
	},
	checker = { enabled = true }, -- Automatically check for plugin updates
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
	debug = false,
})
