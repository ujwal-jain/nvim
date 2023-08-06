-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------
map('t', '<ESC>', '<C-\\><C-n>', {noremap = true})
map('n', '<leader>h', ':wincmd h<CR>', {noremap = true})
map('n', '<leader>j', ':wincmd j<CR>', {noremap = true})
map('n', '<leader>k', ':wincmd k<CR>', {noremap = true})
map('n', '<leader>l', ':wincmd l<CR>', {noremap = true})
map('n', '<leader>t', ':tabnew<CR>', {noremap = true})
map('n', '<Leader>+', ':vertical resize +5<CR>', {noremap = true, silent = true})
map('n', '<Leader>-', ':vertical resize -5<CR>', {noremap = true, silent = true})
map('n', '<leader>q', ':xa<CR>', {noremap = true})

-- greatest remap ever
kmap("x", "<leader>p", [["_dP]])
kmap({"n", "v"}, "<leader>y", [["+y]])
kmap("n", "<leader>Y", [["+Y]])
kmap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
kmap("n", "<leader>u", [[:%s/\s\+$//e<CR>]])

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- remove line length marker for selected filetypes
cmd [[autocmd FileType python,javatext,markdown,html,xhtml,javascript setlocal cc=0]]

-----------------------------------------------------------
-- WildMenuMode
-----------------------------------------------------------
map('c', '<space>', 'wildmenumode() ? "<Down>" : "\\<space>"', {noremap = true, expr = true})
