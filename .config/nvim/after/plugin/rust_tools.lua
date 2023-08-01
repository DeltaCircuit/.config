local rust_tools = require('rust-tools');
local on_attach = require('mason_lspconfig')
rust_tools.setup({
  server = {
    on_attach = on_attach
  }
})
