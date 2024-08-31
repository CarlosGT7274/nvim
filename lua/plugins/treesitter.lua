require'nvim-treesitter.configs'.setup {
  ensure_installed = {'bash', 'c', 'cpp', 'html', 'go', 'lua', 'python', 'markdown', 'rust', 'typescript', 'cmake' },
  auto_install = true,
  highlight = { enable = true },
  --indent = { enable = true },
   incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", 
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    disable = { "c", "ruby" },  -- optional, list of language that will be disabled
    -- [options]
  }
}
