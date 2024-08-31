vim.tbl_add_reverse_lookup = function (tbl)
  for k, v in pairs(tbl) do
    tbl[v] = k
  end
end

-- init.lua
require("core.options")
require("core.keymaps")
require("core.plugins")


-- Plugins
require("plugins.autopairs")
require("plugins.dashboard")
require("plugins.noice")
require("plugins.statusbar")
--require('plugins.feline')
require("plugins.telescope")
require("plugins.tabline")
require("plugins.cmp")
require("plugins.lspconfig")
require("plugins.null-ls")
require("plugins.gitsigns")
require("plugins.nvim-tree")
require("plugins.neo-tree")
require("plugins.neoscroll")

require("plugins.whichkey")
require("plugins.colorizer")

require("plugins.formatter")
require('plugins.prettier')
--require("plugins.auto-indent")

-- require("plugins.blankline")

require('plugins.treesitter')

-- Temas
require("themes.init")
