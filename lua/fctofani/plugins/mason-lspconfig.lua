return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "clangd", -- c and c++
        "java_language_server", -- java
        "pyright", --python
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
    })
  end,
}
