local o = vim.opt

o.number = true
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.termguicolors = true

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
})

o.updatetime = 500

vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]]

