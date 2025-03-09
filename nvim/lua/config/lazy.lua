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
		-- Add LazyVim and import its plugins
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		-- Import any extra modules here
		-- { import = "lazyvim.plugins.extras.lang.typescript" },
		-- { import = "lazyvim.plugins.extras.lang.json" },
		-- { import = "lazyvim.plugins.extras.ui.mini-animate" },
		-- Import/override with your plugins
		{ import = "plugins" },
	},
	defaults = {
		-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
		-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
		lazy = true,
		-- It's recommended to leave version=false for now, since a lot of the plugins that support versioning
		-- have outdated releases, which may break your Neovim install.
		version = false, -- always use the latest git commit
	},
	install = { colorscheme = { "gruvbox", "tokyonight", "habamax" } },
	checker = { enabled = true }, -- Automatically check for plugin updates
	performance = {
		rtp = {
			-- Disable some runtime path plugins to improve performance
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
