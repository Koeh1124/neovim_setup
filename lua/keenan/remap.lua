vim.g.mapleader = " "
vim.keymap.set("n", "<leader>jm", vim.cmd.Ex)

-- fast escape
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "kj", "<ESC>")

-- quicker page nav
vim.keymap.set("n", "<C-j>", "<PageDown>")
vim.keymap.set("n", "<C-k>", "<PageUp>")
