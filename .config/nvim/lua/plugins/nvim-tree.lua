local function my_on_attach(bufnr)
    local api = require('nvim-tree.api')

    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.del("n", "-", { buffer = bufnr })
end

return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false, -- lazy loading is not recommended, see https://github.com/nvim-tree/nvim-tree.lua/wiki/Installation#lazy-loading
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup({
            -- disabling netrw is strongly advised
            disable_netrw = true,
            renderer = {
                icons = {
                    padding = '  ',
                },
            },
            git = {
                ignore = false, -- show ignored files
            },
            on_attach = my_on_attach, -- this is done to remove the default "-" keymap
        })
    end,
}
