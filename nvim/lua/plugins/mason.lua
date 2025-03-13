return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- LSPs
				"pyright",
				"html",
				"cssls",
				"jsonls",
				"tailwindcss-language-server",
				"lua_ls",
				"marksman",

				-- Formatters & Linters
				"prettier",
				"black",
				"stylua",
				"eslint_d",
				"flake8",
				"ruff-lsp", -- Python linter
				"mypy", -- Static type checker
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"pyright",
				"html",
				"cssls",
				"jsonls",
				"tailwindcss",
				"lua_ls",
				"marksman",
				"ruff",
			},
			automatic_installation = true,
		},
	},
}
