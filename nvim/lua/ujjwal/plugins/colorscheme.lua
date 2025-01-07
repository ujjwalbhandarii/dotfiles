return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		local transparent = false

		-- color scheme resembling ChatGPT dark mode
		local bg = "#1e1e2e" -- Deep grayish background
		local bg_dark = "#181825" -- Slightly darker gray for contrasts
		local bg_highlight = "#2b2b40" -- Muted gray-blue for highlights
		local bg_search = "#3e497a" -- Deep indigo for search highlights
		local bg_visual = "#3b4261" -- Muted blue-gray for visuals
		local fg = "#d9e0ee" -- Soft light grayish text
		local fg_dark = "#a6adc8" -- Muted light gray for secondary text
		local fg_gutter = "#5c5f70" -- Darker gray for gutter
		local border = "#414868" -- Muted blue-gray for borders

		require("tokyonight").setup({
			style = "night",
			transparent = transparent,
			styles = {
				sidebars = transparent and "transparent" or "dark",
				floats = transparent and "transparent" or "dark",
			},
			on_colors = function(colors)
				colors.bg = bg
				colors.bg_dark = transparent and colors.none or bg_dark
				colors.bg_float = transparent and colors.none or bg_dark
				colors.bg_highlight = bg_highlight
				colors.bg_popup = bg_dark
				colors.bg_search = bg_search
				colors.bg_sidebar = transparent and colors.none or bg_dark
				colors.bg_statusline = transparent and colors.none or bg_dark
				colors.bg_visual = bg_visual
				colors.border = border
				colors.fg = fg
				colors.fg_dark = fg_dark
				colors.fg_float = fg
				colors.fg_gutter = fg_gutter
				colors.fg_sidebar = fg_dark
			end,
		})

		vim.cmd("colorscheme tokyonight")
	end,
}
