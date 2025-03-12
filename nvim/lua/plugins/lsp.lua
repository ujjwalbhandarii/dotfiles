return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/neodev.nvim", -- Better Lua setup
		"creativenull/efmls-configs-nvim", -- For advanced linting/formatting
	},
	opts = {
		servers = {
			tsserver = {
				settings = {
					completions = {
						completeFunctionCalls = true,
					},
				},
			},
			pyright = {
				settings = {
					python = {
						analysis = {
							typeCheckingMode = "basic",
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
						},
					},
				},
			},
			lua_ls = {
				settings = {
					Lua = {
						completion = {
							callSnippet = "Replace",
						},
						workspace = { checkThirdParty = false },
						telemetry = { enable = false },
					},
				},
			},
			tailwindcss = {
				filetypes = {
					"html",
					"css",
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					"mdx",
				},
			},
			marksman = {}, -- markdown/mdx support
			html = {
				filetypes = { "html", "mdx" },
			},
		},
		setup = {
			tsserver = function(_, opts)
				require("lspconfig").tsserver.setup(opts)
				require("typescript").setup({ disable_commands = false })
			end,
		},
	},
}
