vim.o.termguicolors = true

vim.o.number = true
vim.o.relativenumber = false

vim.o.wrap = false

vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})
