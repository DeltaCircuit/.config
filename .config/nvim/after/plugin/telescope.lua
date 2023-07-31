local builtin = require("telescope.builtin")
local telescope = require('telescope')

telescope.setup {
  defaults = {
   sorting_strategy = 'ascending', 
    layout_config = {
      prompt_position = 'top'
    }
  },
  pickers = {
    find_files = {
      find_command =  { 'rg', '--files', '--hidden', '-g', '!.git' }
    }
  }
}

local set = vim.keymap.set

set('n', '<leader>ff', builtin.find_files, {})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})
set('n', '<leader>fz', builtin.current_buffer_fuzzy_find,{})
