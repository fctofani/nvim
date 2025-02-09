return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "cpp", "markdown", "dockerfile", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "css", "java", "haskell", "bash", "json", "rust" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}

