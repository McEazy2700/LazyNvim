local vim = vim;
require('kanagawa').setup();

require("dressing").setup();

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}

require("transparent").setup({
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
  },
  extra_groups = {
	  "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
	  "NvimTreeNormal" -- NvimTree
  }, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})
vim.g.transparent_groups = vim.list_extend(
  vim.g.transparent_groups or {},
  vim.tbl_map(function(v)
    return v.hl_group
  end, vim.tbl_values(require('bufferline.config').highlights))
)
vim.cmd.colorscheme("github_dark_default") --tokyonight-night
-- vim.g.transparent_enabled = true
vim.opt.termguicolors = true

