local keymap = vim.keymap.set

-- Leader key
vim.g.mapleader = "," -- Setting space as leader key

--[[

How to set a keymap

keymap(
    "<mode>", -- values are "n" for normal mode, "i" for insert mode, "v" for visual mode
    "<key_keymap>", -- example "C-h" for Control-h
    "<current_keymap>", -- example "<C-w>h" for Control-window-h
    opts
)

--]]

keymap("n", "<leader>vs", ":vsplit<cr>")
keymap("n", "<leader>hs", ":split<cr>")

-- NvimTree
keymap("n", "<leader>tt", ":NvimTreeToggle<cr>")
keymap("n", "<leader>tf", ":NvimTreeFocus<cr>")

-- buffers
keymap("n", "<tab>", ":bn<cr>")
keymap("n", "<S-tab>", ":bp<cr>")
keymap("n", "<leader>ct", ":bd<cr>")

-- windows
keymap("n", "=", ":vertical resize +5<cr>")
keymap("n", "-", ":vertical resize -5<cr>")
keymap("n", "+", ":horizontal resize +5<cr>")
keymap("n", "_", ":horizontal resize -5<cr>")

-- text editing
keymap("v", ">", ">gv")
keymap("v", "<", "<gv")
keymap("v", "J", ":m '>+1<cr>gv=gv")
keymap("v", "K", ":m '<-2<cr>gv=gv")

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files follow=true no_ignore=true hidden=true<cr>")
keymap("n", "<leader>fw", ":Telescope live_grep<cr>")
