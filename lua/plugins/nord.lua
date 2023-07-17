return {
  "shaunsingh/nord.nvim",
  priority = 1000,
  config = function()
  -- Set colorscheme after options
    vim.o.termguicolors = true
    vim.cmd.colorscheme("nord")
    vim.opt.fillchars = { eob = " "}
  end,
}
