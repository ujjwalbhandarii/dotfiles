local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Moving from one buffer to another
-- vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

-- Close all buffer except current one
-- vim.api.nvim_set_keymap("n", "<Leader>ca", ":bufdo Bdelete | e#<CR>", { noremap = true, silent = true })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G") -- Control + A

-- Split window
keymap.set("n", "ss", ":split<Return>", opts) -- Horizontal
keymap.set("n", "sv", ":vsplit<Return>", opts) -- Vertical

-- TODO - This need to be fixed
-- Resize window using Leader + h/j/k/l
keymap.set("n", "<Leader>h", "<C-w><", { noremap = true, silent = true })
keymap.set("n", "<Leader>j", "<C-w>-", { noremap = true, silent = true })
keymap.set("n", "<Leader>k", "<C-w>+", { noremap = true, silent = true })
keymap.set("n", "<Leader>l", "<C-w>>", { noremap = true, silent = true })

-- Move window
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Diagnostics
-- keymap.set("n", "<C-j>", function()
-- 	vim.diagnostic.goto_next()
-- end, opts)
