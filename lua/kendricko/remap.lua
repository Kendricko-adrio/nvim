vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ll", ":LspZeroFormat<CR>")
vim.keymap.set("n", "<leader>y", "\"+y", { noremap = true })
