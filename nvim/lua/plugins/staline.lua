return {

    'tamton-aquib/staline.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('staline').setup({
            -- configuration modified from the default in https://github.com/tamton-aquib/staline.nvim
            defaults = {
                full_path       = true,
                line_column     = "[%l/%L]", -- `:h stl` to see all flags.
                font_active     = "bold",     -- "bold", "italic", "bold,italic", etc
                mod_symbol      = "   ",
                lsp_client_symbol = "   ",
                branch_symbol   = " ",
                cool_symbol     = " ",       -- Change this to override default OS icon.
            },
            mode_colors = {
                n = "#2bbb4f",
                i = "#986fec",
                c = "#e27d60",
                v = "#4799eb",   -- etc..
             },
            mode_icons = {
                n = "  NORMAL",
                i = "  INSERTING",
                c = "  COMMAND",
                v = "  VISUAL",   -- etc..
            },
            sections = {
                left = { '-mode', 'left_sep_double', ' ', 'branch' },
                mid  = { 'file_name' },
                right = { 'right_sep_double', '-lsp', '-lsp_name', '-line_column' },
            },
            special_table = {
                NvimTree = { 'NvimTree', ' ' },
                -- packer = { 'Packer',' ' },        -- etc
            },
        })
        require('stabline').setup({
            stab_right = "",
            stab_start  = "",   -- The starting of stabline
            stab_end    = "",
            numbers = function(bufn, n)
                return n..'.- '
            end
        })
    end
}
