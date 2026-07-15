-- PHP & Laravel Config (LazyVim + PHPantom LSP)

return {
  -- Ensure treesitter has blade and phpdoc parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "phpdoc", "blade" })
      end
      return opts
    end,
  },

  -- Clean formatting using conform.nvim with fallbacks
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        blade = { "blade-formatter", "prettierd", "prettier", stop_after_first = true },
        php = { "pint", "php_cs_fixer", stop_after_first = true },
      },
    },
  },

  -- Enable phpstan linting in nvim-lint to catch bugs on save
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        php = { "phpstan" },
      },
    },
  },

  -- Configure LSP options cleanly
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        -- Disable conflicting PHP LSPs to let PHPantom LSP run exclusively
        phpactor = { enabled = false },
        intelephense = { enabled = false },
        phpantom_lsp = {
          filetypes = { "php", "blade" },
        },
      },
    },
  },
}
