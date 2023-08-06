---@diagnostic disable: lowercase-global

-----------------------------------------------------------
-- Neovim API alias globals
-----------------------------------------------------------
kmap = vim.keymap.set 			-- set global keymap
map = vim.api.nvim_set_keymap 	-- set global keymap
cmd = vim.cmd     				-- execute Vim commands
fn = vim.fn       				-- call Vim functions
g = vim.g         				-- global variables
opt = vim.opt         		-- global/buffer/windows-scoped options

-----------------------------------------------------------
-- WildMenuMode
-----------------------------------------------------------
wildmenumode = function()
    return fn.wildmenumode() ~= 0
end
