local vim = vim;
vim.keymap.set("i", "jk", "<Esc>");
vim.keymap.set("n", "H", "<cmd>BufferLineCyclePrev<cr>");
vim.keymap.set("n", "L", "<cmd>BufferLineCycleNext<cr>");

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv");
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv");

vim.keymap.set("n", "J", "mzJ`z");

vim.keymap.set("n", "<C-d>", "<C-d>zz");
vim.keymap.set("n", "<C-u>", "<C-u>zz");

vim.keymap.set("n", "n", "nzzzv");
vim.keymap.set("n", "N", "Nzzzv");

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "[p]aste preserve"});

vim.keymap.set("n", "<leader>y", "\"+y", { desc = "[y]ank to system clipboard"});
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "[y]ank to system clipboard"});
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "[y]ank to system clipboard"});

vim.keymap.set("n", "<leader>d", "\"_d", { desc = "[d]elete to void"});
vim.keymap.set("v", "<leader>d", "\"_d", { desc = "[d]elete to void"});

vim.keymap.set("n", "<C-j>", "<C-w>j");
vim.keymap.set("n", "<C-k>", "<C-w>k");
vim.keymap.set("n", "<C-h>", "<C-w>h");
vim.keymap.set("n", "<C-l>", "<C-w>l");
vim.keymap.set("t", "jk", "<C-\\><C-n>");
vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm 1 direction=float<cr>", { desc="toggle floating term"})
