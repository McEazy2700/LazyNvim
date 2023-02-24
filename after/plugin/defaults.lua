local set = vim.opt;
set.nu = true
set.relativenumber = true
set.guicursor = ""
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smartindent = true
set.termguicolors = true
set.wrap = false
set.swapfile = false
set.backup = false
set.hlsearch = false
set.incsearch = true
set.scrolloff = 8

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
