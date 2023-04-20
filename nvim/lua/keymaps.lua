local keymap = vim.api.nvim_set_keymap

-- Leader key
vim.g.mapleader = " " -- Setting space as leader key
vim.g.maplocalleader = " "

--[[

How to set a keymap

keymap(
    "<mode>", -- values are "n" for normal mode, "i" for insert mode, "v" for visual mode
    "<key_keymap>", -- example "C-h" for Control-h
    "<current_keymap>", -- example "<C-w>h" for Control-window-h
    opts
)

--]]
