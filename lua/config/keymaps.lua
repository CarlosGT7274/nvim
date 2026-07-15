-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- Moverse por palabras
vim.keymap.set("n", "<C-Left>", "b", opts)
vim.keymap.set("n", "<C-Right>", "w", opts)
vim.keymap.set("i", "<C-Left>", "<C-o>b", opts)
vim.keymap.set("i", "<C-Right>", "<C-o>w", opts)
vim.keymap.set("v", "<C-Left>", "b", opts)
vim.keymap.set("v", "<C-Right>", "w", opts)

-- Borrar palabras
vim.keymap.set("i", "<C-BS>", "<C-w>", opts)
vim.keymap.set("i", "<C-Del>", "<C-o>dw", opts)
vim.keymap.set("v", "<C-BS>", "d", opts)
vim.keymap.set("v", "<C-Del>", "d", opts)

-- Mover líneas
vim.keymap.set("n", "<C-S-Up>", ":m .-2<CR>==", opts)
vim.keymap.set("i", "<C-S-Up>", "<Esc>:m .-2<CR>==gi", opts)
vim.keymap.set("v", "<C-S-Up>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("n", "<C-S-Down>", ":m .+1<CR>==", opts)
vim.keymap.set("i", "<C-S-Down>", "<Esc>:m .+1<CR>==gi", opts)
vim.keymap.set("v", "<C-S-Down>", ":m '>+1<CR>gv=gv", opts)
