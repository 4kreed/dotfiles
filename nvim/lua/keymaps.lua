local keymap = vim.keymap.set

-- Leader key
vim.g.mapleader = " " -- Setting space as leader key

--[[

How to set a keymap

keymap(
    "<mode>", -- values are "n" for normal mode, "i" for insert mode, "v" for visual mode
    "<key_keymap>", -- example "C-h" for Control-h
    "<current_keymap>", -- example "<C-w>h" for Control-window-h
    opts
)

--]]

-- FUNCTION

function resize_tree(value)
    require './plugins/nvim-tree'.NvimTreeResize(value)
end

keymap("n", "<leader>vs", ":vsplit<cr>", {})
keymap("n", "<leader>hs", ":split<cr>", {})

-- NvimTree
keymap("n", "<leader>tt", ":NvimTreeToggle<cr>", {})
keymap("n", "<leader>tf", ":NvimTreeFocus<cr>", {})
keymap("n", "<leader>tr", ":lua resize_tree(vim.fn.input('Enter value: '))<cr>", {})

-- buffers
keymap("n", "<tab>", ":bn<cr>", {})
keymap("n", "<S-tab>", ":bp<cr>", {})
