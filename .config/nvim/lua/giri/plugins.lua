local plugins = {

	-- theme
	  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
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
}
}

return plugins
