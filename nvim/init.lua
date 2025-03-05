require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.cmp")
require("config.lsp-config")
require("config.starter")

require("CopilotChat").setup()
require("mason").setup()
require("mason-lspconfig").setup()
require('lualine').setup()
require('gitsigns').setup()
require('mini.comment').setup()
require('mini.pairs').setup()
require('telekasten').setup({
  home = vim.fn.expand("~/zettelkasten"), -- Put the name of your notes directory here
})
