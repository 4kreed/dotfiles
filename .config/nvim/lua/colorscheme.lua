--[[
    set the name of your preferred colorscheme here. If it is not one of the
    builtin colorschemes that come with nvim you'll have to install it (most
    likely as plugin
]]--
local colorscheme = "adwaita"

-- install it the easy way, by running the builtin colorscheme command
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found! Using default.")
    return
end
