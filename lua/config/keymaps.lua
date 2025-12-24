vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "E", ":Neotree focus<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-e>", ":Neotree close<CR>", { noremap = true, silent = true })
