return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    local lspconfig = require("lspconfig")

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local servers = {
        "clangd", -- c and c++
        "java_language_server", -- java
        "eslint", -- javascript and typescript
        "pyright", --pyhton
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

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        capabilities = capabilities,
    })
    end
  end,
}

