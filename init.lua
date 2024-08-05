local vim = vim
local Plug = vim.fn['plug#']


vim.call('plug#begin')
Plug("folke/tokyonight.nvim")
Plug('jiangmiao/auto-pairs')
Plug('norcalli/nvim-colorizer.lua')
Plug('scrooloose/nerdtree')
Plug('shaunsingh/nord.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')

vim.call('plug#end')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.g.mapleader = ' '

-- Keybindings
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
--Tab Key Binding
--
vim.keymap.set('n','<leader>t','<cmd>tabedit<cr>')
vim.keymap.set('n','<leader>q','<cmd>tabprevious<cr>')
vim.keymap.set('n','<leader>e','<cmd>tabnext<cr>')
vim.keymap.set('n','<leader>f','<cmd>tabfind<cr>')


require("tokyonight").setup {
    transparent = true,
    styles = {
       sidebars = "transparent",
       floats = "transparent",
    }
}

vim.cmd 'colorscheme tokyonight'
