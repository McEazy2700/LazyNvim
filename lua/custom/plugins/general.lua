return {
  {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
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
