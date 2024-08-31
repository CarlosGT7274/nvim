



![image-20240831121921430](/home/carlos/.config/nvim/preview/image-20240831121921430.png)


# neovim
with it's tight integration to the unix shell, [vim](http://www.vim.org) has been my editor of choice for years. once you start to grok movements and operators you quickly begin manipulating, not just editing text files. and in the shell, everything is just text ;D these days i'm a full time [neovim](https://neovim.io) user. it's just better than normal vim at this point imho. using a community built embedded language like lua5 makes way more sense than a custom/proprietary one.


my neovim setup is written in [lua](https://neovim.io/doc/user/lua-guide.html), uses [lazy.vim](https://github.com/folke/lazy.nvim), and a bunch of plugins. you can enable/disable them selectivly from [plugins.lua](https://github.com/CarlosGT7274/nvim/tree/master/lua/plugins). here's the structure of configs:

```
~/.config/nvim
├── init.lua
├── lazy-lock.json
├── lazyvim.json
└── lua
    ├── core --> general settings and key-bindings
    │   ├── keymaps.lua
    │   ├── options.lua
    │   └── plugins.lua
    ├── plugins --> each plugin has it's own config
    │   ├── auto-indent.lua
    │   ├── autopairs.lua
    │   ├── blankline.lua
    │   ├── cmp.lua
    │   ├── colorizer.lua
    │   ├── comment.lua
    │   ├── dashboard.lua
    │   ├── feline.lua
    │   ├── formatter.lua
    │   ├── gitsigns.lua
    │   ├── lspconfig.lua
    │   ├── neogit.lua
    │   ├── neoscroll.lua
    │   ├── neo-tree.lua
    │   ├── noice.lua
    │   ├── null-ls.lua
    │   ├── nvim-tree.lua
    │   ├── prettier.lua
    │   ├── statusbar.lua
    │   ├── tabline.lua
    │   ├── telescope.lua
    │   ├── treesitter.lua
    │   └── whichkey.lua
    └── themes
        └── init.lua
```
