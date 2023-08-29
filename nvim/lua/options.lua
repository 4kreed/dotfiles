local options = {
    number = true, -- show (absolute) line number
    relativenumber = true, -- show relative line number
    expandtab = true, -- use spaces when <Tab> is inserted
    tabstop = 4, -- the width of a tab character
    shiftwidth = 4, -- size of an indent (measured in spaces)
    -- softtabstop = 4, -- number of spaces that <Tab> inserts in editing mode
    expandtab = true, -- <Tab> inserts spaces instead of tab character
    smarttab = true, -- <Tab> key inserts shiftwidth spaces
    -- list = true, -- show invisible characters (spaces, tabs, EOLs)
    --listchars = {
    --    space = '·',
    --    precedes = '→',
    --}, -- replace default invisible characters by these ones
    mouse = 'a', -- enable the use of the mouse. 'a' = all modes
    colorcolumn = {'80', '110'}, -- displays the column number provided
    showmatch = true, -- highlight the matching part of [] {} ()
    clipboard = vim.opt.clipboard + "unnamedplus", -- use the unnamedplus clipboard. The goal of this is to be able to paste content in telescope finder. Alternatively we could, outside of this options table, do vim.opt.clipboard:append("unnamedplus").

    -- options needed for staline plugin
    laststatus = 3,
    showtabline = 2,
    termguicolors = true,
    
    -- options needed for autocompletion
    completeopt = { 'menu', 'menuone', 'noselect' },
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
