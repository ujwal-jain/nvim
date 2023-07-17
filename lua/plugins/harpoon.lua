return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    local keymap = vim.keymap.set
    local opts = { silent = true }
    vim.keymap.set("n", "<C-a>", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
  end
}
