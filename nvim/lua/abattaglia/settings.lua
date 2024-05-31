-- settings.lua

-- General settings
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Show relative line numbers
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.shiftwidth = 4          -- Shift 4 spaces when tab
vim.opt.tabstop = 4             -- 1 tab == 4 spaces
vim.opt.smartindent = true      -- Autoindent new lines
vim.opt.wrap = false            -- Don't wrap lines

-- Search settings
vim.opt.ignorecase = true       -- Ignore case in search patterns
vim.opt.smartcase = true        -- Override ignorecase if search contains capitals

-- UI settings
-- vim.opt.termguicolors = true    -- Enable 24-bit RGB colors
-- vim.opt.cursorline = true       -- Highlight the current line
vim.opt.splitright = true       -- Vertical split to the right
vim.opt.splitbelow = true       -- Horizontal split to the bottom
vim.opt.scrolloff = 8           -- Keep 8 lines above/below the cursor
vim.opt.sidescrolloff = 8       -- Keep 8 columns left/right of the cursor

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
