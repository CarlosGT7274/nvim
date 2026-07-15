-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.number = true

-- Use PHPantom LSP for PHP (prevents LazyVim lang.php extra from enabling intelephense/phpactor)
vim.g.lazyvim_php_lsp = "phpantom_lsp"

-- Filetype detection for Laravel Blade
vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})
