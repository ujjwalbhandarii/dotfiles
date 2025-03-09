vim.g.mapleader = " " -- Set leader key to Space

-- Moving from one buffer to another
vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

-- Closing the buffer
vim.api.nvim_set_keymap("n", "<Leader>c", ":BufferLinePickClose<CR>", { noremap = true, silent = true })

-- Close all buffer except current one
-- vim.api.nvim_set_keymap("n", "<Leader>ca", ":bufdo Bdelete | e#<CR>", { noremap = true, silent = true })
