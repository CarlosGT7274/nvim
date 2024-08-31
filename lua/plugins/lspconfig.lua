
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'tsserver', 'eslint', 'pyright', 'lua_ls' },
})

local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}
lspconfig.tsserver.setup{}
lspconfig.eslint.setup{}
lspconfig.lua_ls.setup{}

