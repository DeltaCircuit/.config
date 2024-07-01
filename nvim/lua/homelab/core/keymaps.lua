vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "<C-c>", "<ESC>", { desc = "Exit from insert mode" })
keymap.set("i", "<C-s>", "<ESC>:w<CR>a", { desc = "Save current" })

keymap.set("n", "<C-q>", "<cmd>quit!<CR>", { desc = "Exit" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "[N]o [H]ighlights (Clear search highlights)" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "[S]plit window [V]ertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "[S]plit window [H]orizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make [S]plits [E]qual size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Current [S]plit E[X]it" }) -- close current split window

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "[T]ab: [O]pen new" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "[T]ab: E[X]it" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "[T]ab: Go to [N]ext" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "[T]ab: Go to [P]revious" }) --  go to previous tab
keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "[T]ab: Move current [B]uffer to new tab" }) --  move current buffer to new tab
