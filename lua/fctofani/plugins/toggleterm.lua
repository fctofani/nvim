return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    local toggleterm = require("toggleterm")

    toggleterm.setup({
        size = 20,
        open_mapping = [[<C-\>]],
        shading_factor = 2,
        direction = "horizontal",
    }) 

  end,
}

