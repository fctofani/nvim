return {
	"neovim/nvim-lspconfig",
	event = "BufRead",
	dependencies = {
		"mason.nvim",
		{ "williamboman/mason-lspconfig.nvim", config = function() end },
	}
}

