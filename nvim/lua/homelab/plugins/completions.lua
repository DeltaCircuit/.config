return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    -- nvim-cmp source for neovim builtin LSP client
    "hrsh7th/cmp-nvim-lsp",

    -- nvim-cmp source for buffer words
    "hrsh7th/cmp-buffer",

    -- nvim-cmp source for path
    "hrsh7th/cmp-path",

    -- nvim-cmp source for emoji
    "hrsh7th/cmp-emoji",
    "hrsh7th/cmp-cmdline",
  },

  config = function()
    local cmp = require("cmp")

    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
      }),

      sources = cmp.config.sources({
        { name = "path" }, -- file paths
        { name = "nvim_lsp", keyword_length = 3 }, -- from language server
        { name = "nvim_lsp_signature_help" }, -- display function signatures with current parameter emphasized
        { name = "nvim_lua", keyword_length = 2 }, -- complete neovim's Lua runtime API such vim.lsp.*
        { name = "buffer", keyword_length = 2 }, -- source current buffer
        { name = "vsnip", keyword_length = 2 }, -- nvim-cmp source for vim-vsnip
        { name = "calc" }, -- source for math calculation
      }, {
        { name = "buffer" },
      }),
    })
  end,
}
