return {
    'hoob3rt/lualine.nvim',
    dependencies = {
        "folke/styler.nvim",
    },
    config = function()
        require('lualine').setup {
            options = {
                theme = g.colors_name,
                icons_enabled = true,
                section_separators = {'', ''},
                component_separators = {'', ''},
                disabled_filetypes = {}
            },
            sections = {
                lualine_a = {'mode', 'paste'},
                lualine_b = {'filename', 'filetype'},
                lualine_c = {
                    --{'filename', file_status = true, path = 1},
                    --{'diagnostics', sources = {'nvim_lsp'}}
                },
                lualine_x = {},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {'filename'},
                lualine_b = {'filetype'},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            extensions = {}
        }
    end
}
