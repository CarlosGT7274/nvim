local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
    return
end

local setup = {
    preset = "modern",
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+", -- symbol prepended to a group
    },
    win = {
        border = "rounded", -- none, single, double, shadow
        padding = { 2, 2, 2, 2 },
    },
    layout = {
      width = { min = 5, max = 50 }, -- min and max width of the columns
      spacing = 3, -- spacing between columns
      align = "center", -- align columns left, center or right
    },
    spec = {
      { "<leader>b", group = "Buffers" },
      { "<leader>f", group = "Files" },
      { "<leader>l", group = "LSP" },
      { "<leader>m", group = "Misc" },
      { "<leader>q", group = "Quickfix" },
      { "<leader>R", group = "Replace" },
      { "<leader>mS", group = "TreeSJ" },
      { "<leader>s", group = "Search" },
      { "<leader>t", group = "Toggles" },
      { "<leader>w", group = "Window" },
      { "<leader>z", group = "Spelling" },
    },
    show_help = true,
}

which_key.setup(setup)

