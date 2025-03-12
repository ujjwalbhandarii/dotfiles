return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- LSPs
				"pyright",
				"tsserver",
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
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"tsserver",
				"pyright",
				"html",
				"cssls",
				"jsonls",
				"tailwindcss",
				"lua_ls",
				"marksman",
			},
			automatic_installation = true,
		},
	},
}
