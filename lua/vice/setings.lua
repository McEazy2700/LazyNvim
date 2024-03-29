local vim = vim;
vim.opt.nu = true;
vim.opt.rnu = true;
vim.opt.tabstop = 4;
vim.opt.softtabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.expandtab = true;
vim.opt.smartindent = true;
vim.opt.wrap = false;

vim.opt.swapfile = false;
vim.opt.backup = false;
local undodir = os.getenv("HOME").."/.vim/undodir";
vim.opt.undodir = undodir;

vim.opt.hlsearch = false;
vim.opt.incsearch = true;

vim.opt.termguicolors = true;
vim.opt.scrolloff = 8;
vim.opt.signcolumn = "yes";
vim.opt.updatetime = 50;
vim.opt.colorcolumn = "80";
vim.g.mapleader = " ";

vim.opt.spelllang = "en_us";
vim.opt.spell = false;
vim.g.tmux_navigator_no_mappings = 1
