-- Set up lua language server
require('lspconfig')['lua_ls'].setup {
  capabilities = capabilities
}

-- Set up bash language server
require('lspconfig')['bashls'].setup {
  capabilities = capabilities
}

