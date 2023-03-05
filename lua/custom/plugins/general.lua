return {
  {
    'toppair/peek.nvim',
    build = 'deno task --quiet build:fast' },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, },
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
