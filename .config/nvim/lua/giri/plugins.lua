local plugins = {

  -- theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme catppuccin-frappe]])
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    name = "telescope",
    branch = "0.1.x",
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    name = 'treesitter',
    build = ":TSUpdate"
  },
  {
    'folke/trouble.nvim',
    name = 'trouble',
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    'tpope/vim-fugitive',
    name = 'fugitive'
  },
  {
    'williamboman/mason-lspconfig.nvim',
    name = 'mason_lspconfig',
    dependencies = {
      {
        'neovim/nvim-lspconfig',
        name = 'lspconfig'
      },
      {
        'williamboman/mason.nvim',
        name = 'mason'
      }
    }
  },
  {
    'nvim-lualine/lualine.nvim',
    name = 'lualine'
  },
  {
    'j-hui/fidget.nvim',
    tag = 'legacy',
    event = 'LspAttach'
  }
}

return plugins
