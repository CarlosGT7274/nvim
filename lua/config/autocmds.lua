-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "PaperColorSlim",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "PaperColorSlimLight",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  end,
})

-- Blade template settings (commentstring and indentation)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "blade",
  callback = function()
    vim.bo.commentstring = "{{-- %s --}}"
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.expandtab = true
    vim.bo.softtabstop = 4
  end,
})

