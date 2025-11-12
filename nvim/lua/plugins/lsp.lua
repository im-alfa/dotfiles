 return {
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		config = function()
            require('config.lspconfig')
		end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		event = "BufReadPost",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"pyright",
				"ts_ls",
				"rust_analyzer",
			},
			automatic_installation = true,
		},
	},
	-- LSP-based code-completion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			'neovim/nvim-lspconfig',
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
		},
		config = function()
            require('config.nvim-cmp')
		end
	},
	-- inline function signatures
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts)
            require("config.lsp_signature")
		end
	},
}