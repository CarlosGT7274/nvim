local opts = { noremap = true, silent = true }


vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', { noremap = true, silent = true })

-- ctrl + backspace delete words
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-w>', { noremap = true, silent = true })

-- Deshacer
vim.api.nvim_set_keymap('n', '<leader>u', ':undo<CR>', { noremap = true, silent = true })

-- Rehacer
vim.api.nvim_set_keymap('n', '<leader>r', ':redo<CR>', { noremap = true, silent = true })

-- nvim tree
--vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { noremap = true, silent = true, desc = "Explorer" })

-- neo tree
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle<cr>', { noremap = true, silent = true, desc = "Explorer" })



-- Resize window using <ctrl> arrow keys
vim.api.nvim_set_keymap("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.api.nvim_set_keymap("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.api.nvim_set_keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.api.nvim_set_keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })


vim.api.nvim_set_keymap("n", "<C-S-Up>", ":m .-2<CR>==", opts)
vim.api.nvim_set_keymap("i", "<C-S-Up>", "<Esc>:m .-2<CR>==gi", opts)
vim.api.nvim_set_keymap("v", "<C-S-Up>", ":m '<-2<CR>gv=gv", opts)

-- Mover líneas hacia abajo
vim.api.nvim_set_keymap("n", "<C-S-Down>", ":m .+1<CR>==", opts)
vim.api.nvim_set_keymap("i", "<C-S-Down>", "<Esc>:m .+1<CR>==gi", opts)
vim.api.nvim_set_keymap("v", "<C-S-Down>", ":m '>+1<CR>gv=gv", opts)


vim.api.nvim_set_keymap("n", "<C-S-d>", "<cmd>lua vim.lsp.buf.format()<CR>", opts)

