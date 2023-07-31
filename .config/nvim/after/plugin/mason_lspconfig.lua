-- Imports
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig')


local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp-nvim-lsp').default_capabilities(capabilities)

-- LSP Attach Handler
local on_attach = function(_, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  nmap('gd', vim.lsp.buf.definition, '[G]o to [D]efinition')

  -- Format Command
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })
end


local servers = {
  -- Lua
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enabled = false }
    }
  },
  terraformls = {
    filetypes = { "*.tf", "*.tfvars" }
  }
}

mason.setup()
mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers)
}

mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
      file_types = (servers[server_name] or {}).filetypes,
    }
  end
}
