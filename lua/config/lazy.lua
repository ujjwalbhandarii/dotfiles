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

    -- Language support and snippets
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

    -- Angular syntax support
    { "jose-elias-alvarez/nvim-lsp-ts-utils", dependencies = { "neovim/nvim-lspconfig" } },
    { "iamcco/markdown-preview.nvim", ft = { "markdown" }, build = "cd app && npm install" },

    -- Git integration and Git history
    { "tpope/vim-fugitive" }, -- Git integration
    { "junegunn/gv.vim" }, -- Git history

    -- Path intellisense
    { "hrsh7th/cmp-path" }, -- Autocompletion for file paths

    -- Pretty TypeScript errors
    { "folke/trouble.nvim", dependencies = { "kyazdani42/nvim-web-devicons" } },

    -- Tailwind snippets
    { "EmmanuelMess/tailwindcss-snippets.nvim" }, -- Tailwind CSS snippets

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
