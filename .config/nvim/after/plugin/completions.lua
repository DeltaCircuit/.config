local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'path' },                       -- file paths
    { name = 'nvim_lsp',               keyword_length = 3 }, -- from language server
    { name = 'nvim_lsp_signature_help' },    -- display function signatures with current parameter emphasized
    { name = 'nvim_lua',               keyword_length = 2 }, -- complete neovim's Lua runtime API such vim.lsp.*
    { name = 'buffer',                 keyword_length = 2 }, -- source current buffer
    { name = 'vsnip',                  keyword_length = 2 }, -- nvim-cmp source for vim-vsnip
    { name = 'calc' },                       -- source for math calculation
  }, {
    { name = 'buffer' }
  })
})
