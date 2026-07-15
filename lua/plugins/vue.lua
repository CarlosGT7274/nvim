-- Vue support (Inertia/Vite projects)
-- vue_ls funciona en "hybrid mode": maneja CSS/HTML y le delega TypeScript a vtsls
-- https://github.com/vuejs/language-tools/wiki/Neovim

return {
  -- Ensure vue-language-server stays installed via Mason
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "vue-language-server" },
    },
  },

  -- vue_ls: detecta proyectos Inertia/Vite (sin vue.config.js)
  -- y le pasa el tsdk para que no crashee en modo hybrid
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vue_ls = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "vite.config.ts",
              "vite.config.js",
              "nuxt.config.ts",
              "vue.config.js",
              "package.json",
              ".git"
            )(fname)
          end,
          init_options = {
            typescript = {
              tsdk = vim.fn.expand(
                "$HOME/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib"
              ),
            },
          },
        },
      },
    },
  },
}
