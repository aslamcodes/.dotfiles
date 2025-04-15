vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true             -- Show line numbers

vim.opt.relativenumber = true     -- Relative line numbers

vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.shiftwidth = 4            -- Indent width
vim.opt.tabstop = 4               -- Number of spaces per tab
vim.opt.smartindent = true        -- Smart indentation
vim.opt.wrap = false              -- Disable line wrapping

vim.opt.cursorline = true         -- Highlight current line

vim.opt.termguicolors = true      -- Enable true colors

vim.opt.clipboard = "unnamedplus" -- Use system clipboard

vim.opt.ignorecase = true         -- Case insensitive search
vim.opt.smartcase = true          -- Case sensitive if uppercase present

vim.opt.undofile = true           -- Enable persistent undo
vim.opt.swapfile = false          -- Disable swap file
vim.opt.backup = false            -- Disable backup file

vim.opt.scrolloff = 8             -- Keep cursor 8 lines from top/bottom
vim.opt.sidescrolloff = 8         -- Keep cursor 8 columns from sides
vim.opt.scroll = 10
vim.opt.incsearch = true
vim.opt.signcolumn = 'yes'

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
