require("toggleterm").setup({
  open_mapping = [[<C-\>]],
  direction = "float",
  float_opts = {
    border = "curved"
  }
});


require("peek").setup()
vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
