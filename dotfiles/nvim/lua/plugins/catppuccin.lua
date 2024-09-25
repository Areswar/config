return {
    {
        'catppuccin/nvim',
        config = function()
            local catppuccin = require('catppuccin').setup{
                flavour = 'mocha',
                color_overrides = {
                    mocha = {
                        base = "#151515",
                        mantle = "#000000",
                        crust = "#000000",
                    },
                },
            }
        vim.cmd('colorscheme catppuccin')
        end
    },
}
