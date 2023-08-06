
-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader = ' '             -- change leader to a space
opt.swapfile = false          -- don't use swapfile
opt.autochdir = true          -- auto change current working dir
opt.exrc = true
opt.hlsearch = false          -- don't highlight search result
opt.errorbells = false        -- don't use error bells
opt.nu = true                 -- show line numbers
opt.rnu = true                -- show relative line numbers
opt.wrap = false              -- don't wrap lines
opt.backup = false            -- don't store file backups
opt.undodir = fn.stdpath('cache')..'/nvim/undodir' -- path to undo directory
opt.undofile = true           -- keep undofile
opt.incsearch = true          -- use incremental search
opt.updatetime = 50           -- neovim refresh rate (ms)
opt.tw = 80                   -- text width

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.showmatch = true          -- highlight matching parenthesis
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.cursorline = true         -- highlight current line
opt.scrolloff = 8             -- lines below last edited line
opt.signcolumn = 'no'

-- remove status line and vertical line
opt.fillchars = 'vert: '      -- replace vertical chars with ' '
opt.showmode = false          -- don't show curr mode
opt.ruler = true              -- show line between splits
opt.laststatus = 0            -- remove status from status line
opt.showcmd = false           -- don't show command in status line
opt.cmdheight = 1             -- lines taken up by command
g['&statusline'] = '%#Normal# ' -- remove uncessary extensions from staus line


-----------------------------------------------------------
-- POPUP UI
-----------------------------------------------------------
vim.o.termguicolors = true
opt.fillchars = { eob = " "}

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 240       -- max column for syntax highlight

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
