return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'ahmedkhalf/project.nvim',
    },
    config = function()
        -- Using protected call
        local status_ok, telescope = pcall(require, "telescope")
        if not status_ok then
            return
        end


        require('project_nvim').setup({
            patterns = { ".git", ".hg", "package.json" },
        })

        telescope.load_extension('projects')

        -- Configuration
        telescope.setup {
            defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
                path_display = { "smart" },
                file_ignore_patterns = { ".git/", "node_modules", ".idea" },
                layout_config = {
                    preview_width = 80
                    -- other layout configuration here
                },
            },
        }

        local opts = { silent = true }
        -- Using vim-rooter set the cwd to the root directory of the project
        -- This is useful when using Telescope to find files

        kmap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
        kmap("n", "<leader>fg", ":Telescope git_files<CR>", opts)
        kmap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
        kmap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
        kmap("n", "<leader>fp", ":Telescope projects<CR>", opts)
        kmap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
        kmap("n", "<leader>fk", ":Telescope keymaps<CR>", opts)
    end
}
