return {
    {
        "folke/styler.nvim",
        event = "VeryLazy",
        config = function()
            require("styler").setup {
                themes = {
                    markdown = { colorscheme = g.colors_name },
                    help = { colorscheme = g.colors_name },
                },
            }
            cmd.colorscheme('tokyonight')
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            local tokyonight = require "tokyonight"
            tokyonight.setup { style = "storm" }
            tokyonight.load()
        end,
    },
    {
        "shaunsingh/nord.nvim",
        lazy = false,
        priority = 1000,
        config = function() end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("gruvbox").setup()
        end,
    },
    {
    }
}
