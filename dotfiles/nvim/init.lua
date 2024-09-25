-- Colorscheme
--vim.cmd('colorscheme jellybeans')

-- disable netrw because NvimTree replaces it
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Colors 100th column
vim.wo.colorcolumn = '100'

-- Set the leader key to ,
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Write the file when we leave the buffer
vim.opt.autowrite = true

-- Show line number
vim.opt.number = true

-- Displays Line ends and invisible chars
vim.opt.list = true
vim.opt.listchars = {
    tab = '>-',
    eol = '¬',
    nbsp = '¤'
}

-- Set the minimal amount of lignes under and above the cursor
-- Useful for keeping context when moving with j/k
vim.opt.scrolloff = 5

vim.opt.guifont = 'MesloLGS NF'

-- Activate mac clipboard
vim.api.nvim_set_option("clipboard","unnamed")

-- The length of a tab
vim.opt.tabstop = 8

-- The number of spaces inserted when you press tab
vim.opt.softtabstop = 4

-- The number of spaces inserted/removed when using < or >
vim.opt.shiftwidth = 4

-- Insert spaces instead of tabs
vim.opt.expandtab = true

-- Highlight current line
vim.opt.cursorline = true

vim.opt.shell = 'fish'

-- Removes spaces at end of lines when writing
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = {'*.c','*.h','*.cpp','*.cxx','*.cc','*.hh','*.hxx','*.rs','*.rst','*.md', '*.go'},
    command = [[%s/\s\+$//ge]]
})

-- Enable normal tabs in Yacc/Bison files
vim.api.nvim_create_autocmd('BufEnter', {
    pattern = {'*.y'},
    command = 'set noexpandtab softtabstop=4 shiftwidth=4 tabstop=4'
})

-- Enable normal tabs in go files
vim.api.nvim_create_autocmd('BufEnter', {
    pattern = {'*.go'},
    command = 'set noexpandtab nolist tabstop=4'
})

-- Map keys F1 and F2 to previous and next tab
vim.api.nvim_set_keymap('n', '<F1>', ':bp<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F2>', ':bn<cr>', {noremap = true, silent = true})

-- Display 80th column instead of 100th for git commit
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'gitcommit',
    command = 'set colorcolumn=80'
})

-- Disable arrow keys
vim.api.nvim_set_keymap('n', '<up>', '<nop>', {silent = true})
vim.api.nvim_set_keymap('n', '<down>', '<nop>', {silent = true})
vim.api.nvim_set_keymap('n', '<left>', '<nop>', {silent = true})
vim.api.nvim_set_keymap('n', '<right>', '<nop>', {silent = true})

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("config.lazy")
require("autocomplete")
require("lspdiagnostic")


-- local function bootstrap_paq(packages)
--     local first_install = clone_paq()
--     vim.cmd.packadd("paq-nvim")
--     local paq = require("paq")
--     if first_install then
--         vim.notify("Installing plugins... If prompted, hit Enter to continue.")
--     end
-- 
--     -- Read and install packages
--     paq(packages)
--     paq.install()
-- end
-- 
--   -- Call helper function
--   bootstrap_paq {
--     "savq/paq-nvim",
-- 
--     -- Language server for neovim
--     'neovim/nvim-lspconfig',
-- 
--     -- AST production for language helper packages
--     'nvim-treesitter/nvim-treesitter',
-- 
--     -- Ale plugin for asynchronous syntax check
--     'w0rp/ale',
-- 
--     -- Fugitive Bundle - Git Management
--     'tpope/vim-fugitive',
-- 
--     -- Go support
--     'fatih/vim-go',
-- 
--     -- ToggleTerm (persistent toggleable terminal)
--     'akinsho/toggleterm.nvim',
-- 
--     -- Comfortable scrolling
--     'yuttie/comfortable-motion.vim',
-- 
--     -- Auto close brackets braces and others
--     'tpope/vim-surround',
--     'tpope/vim-repeat',
--     'townk/vim-autoclose',
-- 
--     -- Toogle number lines
--     'jeffkreeftmeijer/vim-numbertoggle',
-- 
--     -- File tree
--     'nvim-tree/nvim-tree.lua',
--     'nvim-tree/nvim-web-devicons',
-- 
--     -- Airline-like lua Bundle (uses nvim-tree-web-devicons)
--     'nvim-lualine/lualine.nvim',
-- 
--     -- Catppuccin color scheme
--     'catppuccin/nvim',
-- }
-- 
-- -- Configure w0rp/ale
-- vim.g.ale_sign_error = '✘'
-- vim.g.ale_sign_warning = '⚠'
-- 
-- -- Configure nvim-lualine/lualine.nvim
-- require('lualine').setup {
--     options = {
--       theme = 'wombat',
--     },
--   }
-- 
-- -- Setup toggleterm
-- require('toggleterm').setup()
-- 
-- -- Configure comfortable-motion
-- vim.g.comfortable_motion_scroll_down_key = "j"
-- vim.g.comfortable_motion_scroll_up_key = "k"
-- vim.g.comfortable_motion_friction = 80.0
-- vim.g.comfortable_motion_air_drag = 2.0
-- 
-- -- Configure vim-numbertoggle
-- vim.api.nvim_set_keymap('n', '<C-n>', ':set relativenumber!<cr>', {noremap = true, silent = true})
-- 
-- -- Configure nvim-tree
--     -- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true
-- require('nvim-tree').setup()
-- vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeFindFile<cr>', {noremap = true, silent = true})
-- vim.api.nvim_create_autocmd('VimEnter', {
--     pattern = {'*'},
--     command = 'if argc() == 0 && !exists("s:std_in") | NvimTreeFocus | endif'
-- })
-- 
-- -- Configure catppuccin colorscheme
-- require('catppuccin').setup{
--     flavour = 'mocha',
--     color_overrides = {
--         mocha = {
--             base = "#151515",
--             mantle = "#000000",
--             crust = "#000000",
--         },
--     },
-- }
-- vim.cmd('colorscheme catppuccin')
