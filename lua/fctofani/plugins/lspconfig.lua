return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    local mason =  require("mason")
    local lspconfig = require("lspconfig")
    local mason_lspconfig = ("mason-lspconfig")

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local servers = {
        "clangd", -- c and c++
        "java_language_server", -- java
        "eslint", -- javascript and typescript
        "cssls", -- css and scss
        "hls", -- haskell
        "html", -- html
        "jsonls", -- json
        "lua_ls", -- lua
        "rust_analyzer", -- rust
        "lemminx", -- xml
        "sqlls", -- SQL
        "bashls", -- bash
        "remark_ls" -- markdown
    }

    mason.setup()

    mason_lspconfig.setup({
      automatic_installation = true,
      ensure_installed = servers
    })
    
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        capabilities = capabilities,
    })
    end
  end,
}

