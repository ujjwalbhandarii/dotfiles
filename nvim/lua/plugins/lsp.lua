return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"folke/neodev.nvim", -- Better Lua setup
			"creativenull/efmls-configs-nvim", -- For advanced linting/formatting
			"jose-elias-alvarez/typescript.nvim",
		},

		opts = {
			servers = {
				lua_ls = {},
				pyright = {},
				tsserver = {
					-- Disable inlay hints
					init_options = {
						typescript = {
							inlayHints = {
								includeInlayVariableTypeHints = false, -- Controls whether variable type hints are shown when declaring variables.
								includeInlayParameterNameHints = "none", -- Controls whether parameter name hints are shown in function calls.
								includeInlayFunctionLikeReturnTypeHints = false, -- Controls whether function return type hints are shown inline.
							},
						},
					},
				},
				marksman = {}, -- markdown/mdx support
				html = {
					filetypes = { "html", "mdx" },
				},
				tailwindcss = {
					filetypes = {
						"mdx",
						"css",
						"html",
						"javascript",
						"typescript",
						"typescriptreact",
						"javascriptreact",
					},
				},
			},
			setup = {
				tsserver = function(_, opts)
					require("lspconfig").tsserver.setup(vim.tbl_deep_extend("force", opts, {
						handlers = {
							["textDocument/inlayHint"] = function() end, -- Force disable inlay hints
						},
					}))
					require("typescript").setup({
						disable_commands = false,
					})
				end,
			},
		},
	},

	-- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
	-- treesitter, mason and typescript.nvim. So instead of the above, you can use:
	{ import = "lazyvim.plugins.extras.lang.typescript" },
}
