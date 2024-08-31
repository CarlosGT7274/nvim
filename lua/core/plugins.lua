require("lazy").setup({

	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return { transparent = true }
		end,
	},
	-- {
	-- 	"LazyVim/LazyVim",
	-- 	import = "lazyvim.plugins",
	-- 	opts = {
	-- 		colorscheme = "kanagawa",
	-- 		news = { lazyvim = true, neovim = true },
	-- 	},
	-- },
	-- Autocompletaciones
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-path" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "hrsh7th/cmp-buffer" },
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	"p00f/nvim-ts-rainbow",

	-- Autopairs
	{ "windwp/nvim-autopairs" },
	-- Noice
	-- lazy.nvim
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim", -- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},                            -- Telescope
	{ "nvim-telescope/telescope.nvim" }, -- Barra de estado chida
	{ "hoob3rt/lualine.nvim" },
	-- Dashboard
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
	},

	-- Pestañas
	{ "akinsho/bufferline.nvim" }, -- Temas
	{ "folke/tokyonight.nvim" },
	{ "akinsho/horizon.nvim",             version = "*" },

	-- Prettier y linting
	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	"MunifTanjim/prettier.nvim",
	{ "mhartington/formatter.nvim" },

	{ "lewis6991/gitsigns.nvim" }, -- status bar 2
	{ "Famiu/feline.nvim" },
	"karb94/neoscroll.nvim",
	"nvim-tree/nvim-tree.lua",

	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		dependencies = { "echasnovski/mini.icons" },
	},
	"norcalli/nvim-colorizer.lua",
	"ayu-theme/ayu-vim",
	{
		"brenton-leighton/multiple-cursors.nvim",
		version = "*", -- Use the latest tagged version
		opts = {}, -- This causes the plugin setup function to be called
		keys = {
			{ "<C-j>",  "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "x" },      desc = "Add cursor and move down" },
			{ "<C-k>",  "<Cmd>MultipleCursorsAddUp<CR>",   mode = { "n", "x" },      desc = "Add cursor and move up" },

			{ "<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>",   mode = { "n", "i", "x" }, desc = "Add cursor and move up" },
			{
				"<C-Down>",
				"<Cmd>MultipleCursorsAddDown<CR>",
				mode = { "n", "i", "x" },
				desc = "Add cursor and move down",
			},

			{
				"<C-LeftMouse>",
				"<Cmd>MultipleCursorsMouseAddDelete<CR>",
				mode = { "n", "i" },
				desc = "Add or remove cursor",
			},

			{ "<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>",    mode = { "n", "x" }, desc = "Add cursors to cword" },
			{
				"<Leader>A",
				"<Cmd>MultipleCursorsAddMatchesV<CR>",
				mode = { "n", "x" },
				desc = "Add cursors to cword in previous area",
			},

			{
				"<Leader>d",
				"<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
				mode = { "n", "x" },
				desc = "Add cursor and jump to next cword",
			},
			{ "<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = { "n", "x" }, desc = "Jump to next cword" },

			{ "<Leader>l", "<Cmd>MultipleCursorsLock<CR>",          mode = { "n", "x" }, desc = "Lock virtual cursors" },
		},
	},

	-- tailwind-tools.lua
	{
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		build = ":UpdateRemotePlugins",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim", -- optional
			"neovim/nvim-lspconfig", -- optional
		},
		opts = {}                  -- your configuration
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		"nmac427/guess-indent.nvim",
		event = "VeryLazy",
		config = function()
			require("guess-indent").setup({})
		end,
	},
	-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
		}
	}
})
