return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required
        {                            -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(cmd, 'MasonUpdate')
            end,
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
    },
    config = function()
        local lsp = require('lsp-zero')
        lsp.preset('recommended')

        lsp.configure('lua_ls', {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim', 'kmap', 'map', 'cmd', 'fn', 'g', 'opt' }
                    }
                }
            }
        })

        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
        })

        cmp_mappings['<Tab>'] = nil
        cmp_mappings['<S-Tab>'] = nil

        lsp.setup_nvim_cmp({
            preselect = 'none',
            completion = {
                completeopt = 'menu,menuone,noinsert'
            },
            mapping = cmp_mappings
        })

        lsp.set_preferences({
            sign_icons = {
                error = 'E',
                warn = 'W',
                hint = 'H',
                info = 'I'
            }
        })

        lsp.format_on_save(
            {
                format_opts = {
                    async = false,
                    timeout_ms = 1500,
                },
                servers = {
                    ['lua_ls'] = { 'lua' },
                    ['rust_analyzer'] = { 'rust' },
                    ['clangd'] = { 'c' },
                    ['pylsp'] = { 'python' },
                    ['gopls'] = { 'go' },
                    ['tsserver'] = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' }
                }
            }
        )

        lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            if client.name == "eslint" then
                cmd.LspStop('eslint')
                return
            end

            kmap("n", "gd", vim.lsp.buf.definition, opts)
            kmap("n", "K", vim.lsp.buf.hover, opts)
            kmap("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
            kmap("n", "<leader>vd", vim.diagnostic.open_float, opts)
            kmap("n", "[d", vim.diagnostic.goto_next, opts)
            kmap("n", "]d", vim.diagnostic.goto_prev, opts)
            kmap("n", "<leader>vca", vim.lsp.buf.code_action, opts)
            kmap("n", "<leader>vrr", vim.lsp.buf.references, opts)
            kmap("n", "<leader>vrn", vim.lsp.buf.rename, opts)
            kmap("i", "<C-h>", vim.lsp.buf.signature_help, opts)
        end)

        lsp.setup()

        vim.diagnostic.config({
            virtual_text = true,
        })
    end
}
