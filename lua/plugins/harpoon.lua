return {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        kmap("n", "<C-a>", mark.add_file)
        kmap("n", "<C-e>", ui.toggle_quick_menu)

        kmap("n", "<C-j>", function() ui.nav_file(1) end)
        kmap("n", "<C-k>", function() ui.nav_file(2) end)
        kmap("n", "<C-l>", function() ui.nav_file(3) end)
    end
}
