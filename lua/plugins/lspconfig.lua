return {
	"neovim/nvim-lspconfig",
	event = "BufRead",
	dependencies = {
		"mason.nvim",
		{ "williamboman/mason-lspconfig.nvim", config = function() end },
	},
	config = function () 
		local lspconfig = require("lspconfig")
		local mason = require("mason")
		mason.setup()

		lspconfig.rust_analyzer.setup({})
	end,
}

