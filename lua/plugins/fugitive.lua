return {
    "tpope/vim-fugitive",
    config = function ()
        kmap("n", "<leader>gs", cmd.Git)
    end
}
