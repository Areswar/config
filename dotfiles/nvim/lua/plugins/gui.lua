return {
    -- Icons set for nvim-tree
    {
        'nvim-tree/nvim-web-devicons',
        version = "*",
        config = function()
            require('nvim-web-devicons').setup()
        end
    },
    -- File tree plugin
    {
        'nvim-tree/nvim-tree.lua',
        version = "*",
        config = function()
            -- set termguicolors to enable highlight groups
            vim.opt.termguicolors = true
            require('nvim-tree').setup()
            vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeFindFile<cr>', {noremap = true, silent = true})
            vim.api.nvim_create_autocmd('VimEnter', {
                pattern = {'*'},
                command = 'if argc() == 0 && !exists("s:std_in") | NvimTreeFocus | endif'
            })
        end,
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    -- Tab-style tabpane header
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('bufferline').setup({
                options = {
                    numbers = "buffer_id",
                    indicator = {
                        style = 'underline',
                    },
                    separator_style = 'slant',
                    
                }
            })
        end
    },

    -- Bottom status bar
    {
        'nvim-lualine/lualine.nvim', 
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'wombat',
                },
            })
        end
    },

    -- Number toogle
    {
        'sitiom/nvim-numbertoggle',
        config = function()
            --require('nvim-numbertoggle').setup()
            vim.api.nvim_set_keymap('n', '<C-n>', ':set relativenumber!<cr>', {noremap = true, silent = true})
        end
    },
}
