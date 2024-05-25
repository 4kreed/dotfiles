return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag"
    },
    opts = {
        ensure_installed = { 'c', "lua", "html", "css" },
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true }, -- nvim-ts-autotag
    },
    config = function(_, opts)
        require('nvim-treesitter.configs').setup(opts)

        -- vim.opt.foldmethod = "expr"
        -- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    end,
}
