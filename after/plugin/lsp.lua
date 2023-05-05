local vim = vim;
local lsp = require('lsp-zero').preset({})
local lsp_status = require('lsp-status')
lsp_status.register_progress()

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    lsp_status.on_attach(client)
    local opts = { buffer = true }

    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { buffer=true, desc="[c]ode [a]ctions" })
    vim.keymap.set({ 'n', 'v' }, '<space>cr', vim.lsp.buf.rename, { buffer=true, desc="[c]ode [r]ename" })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
        vim.lsp.buf.format { async = true }
    end, opts)
end)

lsp.setup()

local cmp = require('cmp')
local cmp_action = require("lsp-zero").cmp_action()
require('luasnip.loaders.from_vscode').lazy_load()


cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
        ['<C-Space>'] = cmp.mapping.complete(),
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    preselect = 'item',
    sources = {
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
    },
})
