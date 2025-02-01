-- Set up python language server
require('lspconfig')['pyright'].setup {
  capabilities = capabilities
}

-- Set up ansible language server
require('lspconfig')['ansiblels'].setup {
  capabilities = capabilities
}

-- Set up terraform language server
require('lspconfig')['terraformls'].setup {
  capabilities = capabilities
}

-- Set up lua language server
require('lspconfig')['lua_ls'].setup {
  capabilities = capabilities
}

-- Set up c/c++ language server
require('lspconfig')['clangd'].setup {
  capabilities = capabilities
}

-- Set up docker language server
require('lspconfig')['dockerls'].setup {
  capabilities = capabilities
}

-- Set up golang language server
require('lspconfig')['gopls'].setup {
  capabilities = capabilities
}

