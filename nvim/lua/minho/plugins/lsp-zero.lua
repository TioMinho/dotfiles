-- lsp-zero.lua
-- A plugin providing Language Server Protocol (LSP) functionalities

return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',
    },
    config = function()
        -- Loads some modules
        local lsp_zero = require('lsp-zero')
        local cmp = require('cmp')
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        -- Configures lsp-zero
        lsp_zero.on_attach( function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }  -- Command options
            local keymap = vim.keymap.set                   -- Shortening alias

            keymap("n", "gd",          function() vim.lsp.buf.definition() end, opts)
            keymap("n", "gD",          function() vim.lsp.buf.declaration() end, opts)
            keymap("n", "gi",          function() vim.lsp.buf.implementation() end, opts)
            keymap("n", "K",           function() vim.lsp.buf.hover() end, opts)
            keymap("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            keymap("n", "<leader>vd",  function() vim.diagnostic.open_float() end, opts)
            keymap("n", "[d",          function() vim.diagnostic.goto_next() end, opts)
            keymap("n", "]d",          function() vim.diagnostic.goto_prev() end, opts)
            keymap("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            keymap("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            keymap("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            keymap("i", "<C-h>",       function() vim.lsp.buf.signature_help() end, opts)
        end)

        -- Configures mason
        mason.setup({})
        mason_lspconfig.setup({
            ensure_installed = {'clangd', 'html', 'cssls', 'tsserver', 'julials', 'ltex', 'pylsp'},
            handlers = {
            lsp_zero.default_setup,
            julials = function()
                require('lspconfig').julials.setup({})
            end,
            lua_ls = function()
                local lua_opts = lsp_zero.nvim_lua_ls()
                require('lspconfig').lua_ls.setup(lua_opts)
            end
          }
        })

        -- Configures cmp
        cmp.setup({
            sources = {
                {name = 'path'},
                {name = 'nvim_lsp'},
                {name = 'nvim_lua'},
            },
            formatting = lsp_zero.cmp_format(),
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            })
        })
    end
}
