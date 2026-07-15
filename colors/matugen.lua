vim.cmd("hi clear")
require("base16-colorscheme").setup({
  -- Background tones
  base00 = "#1c1f21", -- Default Background
  base01 = "#2e3438", -- Lighter Background (status bars)
  base02 = "#2a2f32", -- Selection Background
  base03 = "#606b71", -- Comments, Invisibles
  -- Foreground tones
  base04 = "#afb4b6", -- Dark Foreground (status bars)
  base05 = "#f2f2f3", -- Default Foreground
  base06 = "#f2f2f3", -- Light Foreground
  base07 = "#f2f2f3", -- Lightest Foreground
  -- Accent colors
  base08 = "#fd4663", -- Variables, XML Tags, Errors
  base09 = "#8a66cc", -- Integers, Constants
  base0A = "#5c6ad6", -- Classes, Search Background
  base0B = "#67b8e4", -- Strings, Diff Inserted
  base0C = "#b396e9", -- Regex, Escape Chars
  base0D = "#93ccec", -- Functions, Methods
  base0E = "#969fe9", -- Keywords, Storage
  --base0F = '#900017', -- Deprecated, Embedded Tags
})

local signal = vim.uv.new_signal()
signal:start(
  "sigusr1",
  vim.schedule_wrap(function()
    vim.cmd("hi clear")
    vim.cmd("colorscheme matugen")
  end)
)
