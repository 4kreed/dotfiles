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
        })
    end,
}
