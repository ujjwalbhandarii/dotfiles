local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all -- Control + A
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "<leader>h", ":split<Return>", opts) -- Horizontal
keymap.set("n", "<leader>v", ":vsplit<Return>", opts) -- Vertical

-- Move window
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Keymaps for switching tabs
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
