return {
  {
    'stevearc/dressing.nvim',
    config = function ()
      require('dressing').setup({
        input = {
          enabled = false
        }
      })
    end
  },
  {'romgrk/barbar.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},
  {'akinsho/toggleterm.nvim', version = "*", config = true}
}
