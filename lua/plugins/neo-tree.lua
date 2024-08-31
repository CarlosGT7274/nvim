    require("neo-tree").setup({
        source_selector = {
            winbar = false,
            statusline = false
        },
        window = {
          position = "left",
          width = 40,
          mapping_options = {
            noremap = true,
            nowait = true,
          },
        },
        filesystem = {
            hijack_netrw_behavior = "disabled", 
            use_libuv_file_watcher = true,
            hide_hidden = false, 
        }
    })
