vim.g.mapleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true

-- Disabling netrw plugin
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = true
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.mouse = "a"

vim.opt.wildignore:append({
	"*/node_modules/*", -- Ignore Node.js modules
	"*/venv/*", -- Ignore Python virtual environments (common name)
	"*/env/*", -- Ignore Python virtual environments (another common name)
	"*/.env/*", -- Ignore environment variable files
	"*/__pycache__/*", -- Ignore Python bytecode cache directories
	"*/.git/*", -- Ignore Git directories
	"*/.pytest_cache/*", -- Ignore pytest cache directories
	"*/.mypy_cache/*", -- Ignore mypy cache directories
	"*/.venv/*", -- Ignore virtual environments (another common name)
	"*/.tox/*", -- Ignore tox directories
	"*/.idea/*", -- Ignore JetBrains IDE project files
	"*/.vscode/*", -- Ignore Visual Studio Code project files
	"*/storage/*", -- Ignore Laravel storage directory
	"*/vendor/*", -- Ignore Laravel vendor directory (for Composer dependencies)
	"*/bootstrap/cache/*", -- Ignore Laravel bootstrap cache directory
	"*/public/hot/*", -- Ignore Laravel Mix hot reload file
	"*/.phpunit.result.cache", -- Ignore PHPUnit cache file
})

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })
