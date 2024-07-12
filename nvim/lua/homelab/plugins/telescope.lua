return {
  {
    "nvim-telescope/telescope-file-browser.nvim"
  },{
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim", { "nvim-telescope/telescope-fzf-native.nvim", build = "make" } },
  config = function()
    local builtin = require("telescope.builtin")
    local telescope = require("telescope")
    local telescope_themes = require("telescope.themes")

    telescope.setup({
      defaults = {
        sorting_strategy = "ascending",
        layout_config = {
          prompt_position = "top",
        },
      },
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("file_browser")
    --telescope.load_extension("git_worktree")

    local set = vim.keymap.set
    local nmap = function(keys, func, desc)
      set("n", keys, func, { desc = desc })
    end

    nmap("<leader>ff", builtin.find_files, "[F]ind [F]iles")
    nmap("<leader>fg", builtin.live_grep, "[F]ind by [G]rep")
    nmap("<leader>fb", builtin.buffers, "[F]ind open [B]uffers")
    nmap("<leader>fh", builtin.help_tags, "[F]ind [H]elp tags")
    nmap("<leader>/", function()
      builtin.current_buffer_fuzzy_find(telescope_themes.get_dropdown({ winblend = 10, previewer = false }))
    end, "[/] Fuzzy search in current buffer")
    nmap("<leader>gs", builtin.git_status, "[G]it [Status]")
    nmap("<leader>ft", telescope.extensions.file_browser.file_browser(),"Open [F]ile [B]rowser")
  end,
}}
