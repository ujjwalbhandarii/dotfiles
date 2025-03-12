return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",

	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"saadparwaiz1/cmp_luasnip",
		"onsails/lspkind.nvim",
	},

	opts = function()
		local cmp = require("cmp")

		return {
			completion = {
				completeopt = "menu,menuone,noinsert",
			},

			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),

			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			}),

			formatting = {
				format = require("lspkind").cmp_format({
					mode = "symbol_text",
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
		}
	end,
}
