return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- Using protected call
        local status_ok, nvim_tree = pcall(require, "nvim-tree")
        if not status_ok then
            return
        end

        nvim_tree.setup {
            git = {
                enable = true,
            },
            update_focused_file = {
                enable = true,
            },
            renderer = {
                root_folder_modifier = ":t",
                icons = {
                    glyphs = {
                        default = "",
                        symlink = "",
                        folder = {
                            arrow_open = "",
                            arrow_closed = "",
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                            symlink = "",
                            symlink_open = "",
                        },
                        git = {
                            unstaged = "",
                            staged = "S",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "U",
                            deleted = "",
                            ignored = "◌",
                        },
                    },
                },
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true,
                icons = {
                    hint = "",
                    info = "",
                    warning = "▲",
                    error = "✘",
                },
            },
            view = {
                width = 25,
                side = "left",
            },
        }

        -- Setting Keymaps
        kmap("n", "<leader>.", ":NvimTreeToggle<CR>", { silent = true })
    end,
}
