local builtin = require("telescope.builtin")
local telescope = require('telescope')
local telescope_themes = require('telescope.themes')

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
telescope.load_extension('fzf')

local set = vim.keymap.set
local nmap = function(keys, func, desc)
  vim.keymap.set('n', keys, func, {desc=desc})
end

nmap('<leader>ff', builtin.find_files, '[F]ind [F]iles')
nmap('<leader>fg', builtin.live_grep, '[F]ind by [G]rep')
nmap('<leader>fb', builtin.buffers, '[F]ind open [B]uffers')
nmap('<leader>fh', builtin.help_tags, '[F]ind [H]elp tags')
nmap('<leader>/', function () 
  builtin.current_buffer_fuzzy_find(telescope_themes.get_dropdown{winblend = 10, previewer = false})
end, '[/] Fuzzy search in current buffer')
