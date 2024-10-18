local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins", opts = {
      colorscheme = "vscode",
    } },

    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.tailwind" },
    { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
    { import = "lazyvim.plugins.extras.formatting.prettier" },
    { import = "lazyvim.plugins.extras.linting.eslint" },
    { import = "lazyvim.plugins.extras.ui.mini-animate" },

    -- AI code helper (Tabnine)
    { "codota/tabnine-nvim", build = "./dl_binaries.sh" },

    -- Prisma language support
    { "pantharshit00/vim-prisma" },

    -- Git integration and Git history
    { "tpope/vim-fugitive" }, -- Git integration
    { "junegunn/gv.vim" }, -- Git history

    -- Tailwind CSS integration
    { "themaxmarchuk/tailwindcss-colors.nvim", config = true },

    -- Autocompletion setup for Tailwind CSS using nvim-cmp
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" }, -- LSP installer
    { "williamboman/mason-lspconfig.nvim" }, -- Bridges mason and lspconfig

    -- LSP setup for Tailwind CSS
    {
      "neovim/nvim-lspconfig",
      config = function()
        require("lspconfig").tailwindcss.setup({
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  "tw`([^`]*)", -- tw`...`
                  'tw="([^"]*)', -- tw="..."
                  'tw={"([^"}]*)', -- tw={"..."}
                  "tw\\.\\w+`([^`]*)", -- tw.xxx`...`
                },
              },
            },
          },
        })
      end,
    },

    -- import/override with your plugins
    { import = "plugins" },
  },

  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },

  install = { colorscheme = { "tokyonight", "habamax" } },

  checker = {
    enabled = true,
    notify = false,
  },

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
})
